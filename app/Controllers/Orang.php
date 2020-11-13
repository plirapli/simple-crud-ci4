<?php

namespace App\Controllers;

use App\Models\OrangModel;

class Orang extends BaseController
{
	public function __construct()
	{
		$this->orangModel = new OrangModel();
	}

	public function index()
	{
		$pager = \Config\Services::pager();
		$currentPage = $this->request->getVar('page_orang') ? $this->request->getVar('page_orang') : 1;
		$keyword = $this->request->getVar('keyword');

		if ($keyword) {
			$this->orangModel->search($keyword);
			redirect()->to('/orang')->withInput();
		} else {
			$this->orangModel;
		}

		$data = [
			'title' => 'Data',
			'orang' => $this->orangModel->paginate(5, 'orang'),
			'pager' => $this->orangModel->pager,
			'currentPage' => $currentPage,
			'keyword' => $keyword
		];


		return view('/pages/orang/index', $data);
	}

	public function detail($id)
	{

		$data = [
			'title' => 'Informasi Orang',
			'orang' => $this->orangModel->getOrang($id)
		];

		if (empty($data['orang'])) {
			throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Tidak ditemukan');
		}

		return view('/pages/orang/info', $data);
	}

	public function create()
	{
		$data = [
			'title' => 'Tambah Data',
			'validation' => \Config\Services::validation()
		];


		return view('/pages/orang/create', $data);
	}

	public function save()
	{
		//Inisiasi Rules
		$rules = [
			'nama' => [
				'rules' => 'required',
				'errors' => [
					'required' => '{field} harus diisi.'
				]
			],
			'alamat' => [
				'rules' => 'required',
				'errors' => [
					'required' => '{field} harus diisi.'
				]
			],
			'telp' => [
				'rules' => 'required|is_unique[orang.telp]|integer',
				'errors' => [
					'required' => 'nomor telepon harus diisi.',
					'is_unique' => 'nomor telepon sudah terdaftar.',
					'integer' => 'nomor telepon harus berisi angka.'
				]
			]
		];

		//Validation
		if (!$this->validate($rules)) {
			$validation =  \Config\Services::validation();
			return redirect()->to('/orang/create')->withInput()->with('validation', $validation);
		}

		$this->orangModel->save([
			'nama' => $this->request->getVar('nama'),
			'alamat' => $this->request->getVar('alamat'),
			'telp' => '+62' . $this->request->getVar('telp')
		]);

		session()->setFlashdata('pesan', 'Data berhasil ditambahkan.');
		return redirect()->to('/orang');
	}

	public function delete($id)
	{
		$this->orangModel->delete($id);

		session()->setFlashdata('pesan', 'Data berhasil dihapus.');
		return redirect()->to('/orang');
	}

	public function edit($id)
	{
		$data = [
			'title' => 'Edit Data',
			'orang' => $this->orangModel->getOrang($id),
			'validation' => \Config\Services::validation()
		];

		if (empty($data['orang'])) {
			throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Tidak ditemukan');
		}

		return view('/pages/orang/edit', $data);
	}

	public function update($id)
	{
		$rules = [
			'nama' => [
				'rules' => 'required',
				'errors' => [
					'required' => '{field} harus diisi.'
				]
			],
			'alamat' => [
				'rules' => 'required',
				'errors' => [
					'required' => '{field} harus diisi.'
				]
			],
			'telp' => [
				'rules' => 'required|is_unique[orang.telp,id,{id}]|integer', //is_unique akan diignore jika tidak berubah
				'errors' => [
					'required' => 'nomor telepon harus diisi.',
					'is_unique' => 'nomor telepon sudah terdaftar.',
					'integer' => 'nomor telepon harus berisi angka saja.'
				]
			]
		];

		//Validation
		if (!$this->validate($rules)) {
			$validation =  \Config\Services::validation();
			return redirect()->to('/orang/edit/' . $this->request->getVar('id'))->withInput()->with('validation', $validation);
		}

		$this->orangModel->save([
			'id' => $id,
			'nama' => $this->request->getVar('nama'),
			'alamat' => $this->request->getVar('alamat'),
			'telp' => $this->request->getVar('telp')
		]);

		session()->setFlashdata('pesan', 'Data berhasil diubah.');
		return redirect()->to('/orang');
	}
}
