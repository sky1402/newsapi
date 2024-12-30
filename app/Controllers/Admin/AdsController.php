<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;

use App\Models\Admin\AdsModel;

class AdsController extends BaseController
{
    protected $adsModel;
    public function index()
    {
        $id = $this->request->getGet('id');

        if (!empty($id)) {

            $data['adsByid'] = $this->adsModel->where('id', $id)->where('deleted_at', null)->first();
        }
        $data['allAds'] = $this->adsModel->where('deleted_at', null)->findAll();
        echo view('admin/layouts/adminheader');
        echo view('admin/adssetup', $data);
        echo view('admin/layouts/adminfooter');
    }

    public function __construct()
    {

        $this->adsModel = new AdsModel();
    }


    public function saveAds()
    {
        $adsId = $this->request->getGet('id');
        $message = empty($adsId) ? 'Ad created successfully' : 'Ad updated successfully';
        $newImageName = '';

        // Fetch existing ad details if updating
        if (!empty($adsId)) {
            $existingAd = $this->adsModel->where('id', $adsId)->where('deleted_at', null)->first();
            $newImageName = $existingAd['image'] ?? '';
        }

        // Validate input
        if (!$this->validate([
            'image'    => [
                'rules'  => 'is_image[image]|max_size[image,50480]',
                'label'  => 'Image',
                'errors' => [
                    'is_image' => 'The file must be a valid image.',
                    'max_size' => 'The image size must not exceed 50MB.',
                ],
            ],
            'priority' => 'required|integer|min_length[1]',
        ])) {
            return redirect()->back()->withInput()->with('errors', $this->validator->getErrors());
        }

        // Handle file upload
        $imageFile = $this->request->getFile('image');
        if ($imageFile && $imageFile->isValid() && !$imageFile->hasMoved()) {
            $newImageName = $imageFile->getRandomName();
            $imageFile->move(FCPATH . 'assets/uploads/', $newImageName);
        }

        // Prepare data for saving
        $adsData = [
            'id'       => $adsId,
            'image'    => $newImageName,
            'priority' => $this->request->getPost('priority'),
        ];

        // Save ad to database
        if ($this->adsModel->save($adsData)) {
            return redirect()->to('ads-setup')->with('success', $message);
        }

        // Handle save failure
        return redirect()->back()->withInput()->with('errors', $this->adsModel->errors());
    }

    public function softdeleteAds()
    {
        // Retrieve the ad ID from the request
        $adsId = $this->request->getGet('id');

        // Check if the ID is provided
        if (empty($adsId)) {
            return redirect()->back()->with('errors', 'Invalid Ad ID.');
        }

        // Find the ad in the database
        $ad = $this->adsModel->where('id', $adsId)->where('deleted_at', null)->first();

        // Check if the ad exists
        if (!$ad) {
            return redirect()->back()->with('errors', 'Ad not found or already deleted.');
        }

        if ($this->adsModel->delete($adsId)) {
            return redirect()->to('ads-setup')->with('success', 'Ad deleted successfully.');
        } else {
            return redirect()->back()->with('errors', 'Failed to delete the ad. Please try again.');
        }
    }
}
