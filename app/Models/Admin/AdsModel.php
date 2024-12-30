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

    // Fields that can be inserted/updated
    protected $allowedFields    = ['image', 'priority'];

    // Timestamps for soft deletes
    protected $useTimestamps    = true;
    protected $createdField     = 'created_at';
    protected $updatedField     = 'updated_at';
    protected $deletedField     = 'deleted_at';
}
