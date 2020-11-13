<?php

namespace App\Controllers;

class Home extends BaseController
{
	public function index()
	{
		$data = [
			'title' => 'Home',
		];
		return view('/pages/home', $data);
	}

	public function about()
	{
		$data = [
			'title' => 'About Us',
		];
		return view('/pages/about', $data);
	}
}
