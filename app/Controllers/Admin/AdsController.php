<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;

class AdsController extends BaseController
{
    public function index()
    {
        echo view('admin/layouts/adminheader');
        echo view('admin/adssetup');
        echo view('admin/layouts/adminfooter');
    }


    public function saveAds() {}
}
