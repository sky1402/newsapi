<?php

namespace App\Controllers\Admin;

use CodeIgniter\HTTP\ResponseInterface;

use App\Libraries\NepaliDateNew;

use App\Models\Admin\HomesetupModel;
use App\Models\Admin\Topbarmodel;
use App\Models\Admin\Categorymodel;
use App\Models\Admin\Headermodel;
use App\Models\Admin\Menumodel;
use App\Models\Admin\Introductionmodel;
use App\Models\Admin\Footermodel;
use App\Models\Admin\Navigationmodel;
use App\Models\Admin\Pagemodel;
use App\Models\Admin\PostModel;
use App\Models\Admin\Popupmodel;






use App\Models\Admin\FaqModel;

use CodeIgniter\RESTful\ResourceController;

class ApiController extends ResourceController
{


    protected $uri;
    protected $topbarModel;
    protected $categoryModel;
    protected $headerModel;
    protected $menuModel;
    protected $introductionModel;
    protected $footerModel;
    protected $navigationModel;
    protected $pageModel;
    protected $postModel;

    protected $homesetupModel;
    protected $popupmodel;






    public function __construct()
    {
        $this->uri = service('uri');
        $this->topbarModel = new Topbarmodel();
        $this->categoryModel = new Categorymodel();
        $this->headerModel = new Headermodel();
        $this->menuModel = new Menumodel();
        $this->introductionModel = new Introductionmodel();
        $this->footerModel = new Footermodel();
        $this->navigationModel = new Navigationmodel();
        $this->pageModel = new Pagemodel();
        $this->postModel = new Postmodel();
        $this->homesetupModel = new HomesetupModel();
        $this->popupmodel = new Popupmodel();
    }
    public function index()
    {
        return redirect()->to('login');
    }


    public function homesetup()
    {

        $data = [
            'message' => 'success',
            'homedetails'      => $this->homesetupModel->findAll()
        ];


        return $this->respond($data, 200);
    }


    private function getDetails($model, $key)
    {
        $data = [
            'message' => 'success',
            $key      => $this->$model->findAll()
        ];

        return $this->respond($data, 200);
    }

    public function getTopbarDetails()
    {
        return $this->getDetails('topbarModel', 'topbar');
    }

    public function getHeaderDetails()
    {
        return $this->getDetails('headerModel', 'header');
    }

    public function getMenuDetails()
    {
        $data = [
            'message' => 'success',
            'menu'      => $this->menuModel->getAllmenu()
        ];



        return $this->respond($data, 200);
    }



    public function getIntroductionDetails()
    {
        return $this->getDetails('introductionModel', 'intro');
    }




    public function getPageDetails()
    {
        $pageId = $this->request->getGet('id');

        $data = [
            'message' => 'success',
            'page'      => $this->pageModel->getSinglePageData($pageId)
        ];

        return $this->respond($data, 200);
    }


    public function getPostDetails()
    {

        $postId = $this->request->getGet('id');

        $data = [
            'message' => 'success',
            'post'      => $this->postModel->getSinglePostData($postId)
        ];

        return $this->respond($data, 200);
    }





    public function getCategoryDetails()
    {

        $catId = $this->request->getGet('id');

        $data = [
            'message' => 'success',
            'category'      => $this->categoryModel->getCategoryById($catId)
        ];

        return $this->respond($data, 200);
    }





    public function getFooterDetails()
    {

        return $this->getDetails('footerModel', 'footerlist');
    }


    public function getpostlistBycategoryId()
    {

        $catId = $this->request->getGet('catId');

        $data = [
            'message' => 'success',
            'allpostbyId'      => $this->postModel->postforcategory($catId)
        ];



        return $this->respond($data, 200);
    }


    public function getPopup()
    {

        $data = [
            'message' => 'success',
            'popupmodel'      => $this->popupmodel->where('active_status', '1')->where('delete_status', '0')->findAll()
        ];

        return $this->respond($data, 200);
    }
}
