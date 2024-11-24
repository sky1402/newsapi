<?php

namespace App\Models\Admin; // directory where this file exist

use CodeIgniter\Model;

class HomesetupModel extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'homepage_sections';
    protected $allowedFields = [

        'section_name',
        'category_ids',
        'priority',
        'content_type',
        'item_count',
        'status',
        'created_at',
        'updated_at'
    ];
}
