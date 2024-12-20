<?php

namespace App\Models\Admin;

use CodeIgniter\Model;

class AdsModel extends Model
{
    protected $table            = 'ads';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = true;
    protected $protectFields    = true;
    protected $allowedFields    = [];
}