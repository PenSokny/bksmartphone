<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class user_not_register extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/user_register/listMenu_user');
   

	}


	public function index()
	{

		$data['users_not_register'] = $this->model->get_users_not_register();		
       	$this->load->view('admin/user_not_register/view_user_not_register',$data);
       	   $this->load->view('admin/footer');

	}
	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$this->model->delete(array('id'=>$id),'user_order_notregister');
	
		$this->model->delete_comment($id, 0);
		header("location:".site_url('admin/user/user_not_register/index'));

	}
}