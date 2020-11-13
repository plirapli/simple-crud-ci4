<?php

namespace App\Models;

use CodeIgniter\Model;

class OrangModel extends Model
{
    protected $table      = 'orang';
    protected $allowedFields = ['nama', 'alamat', 'telp'];
    protected $useTimestamps = true;

    public function getOrang($id = false)
    {
        if ($id == false) {
            return $this->findAll();
        }

        return $this->where(['id' => $id])->first();
    }

    public function search($keyword)
    {
        return $this->table('orang')->like('nama', $keyword)->orLike('alamat', $keyword)->orLike('telp', $keyword);
    }
}
