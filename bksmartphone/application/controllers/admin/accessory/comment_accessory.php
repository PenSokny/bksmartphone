<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class comment_accessory extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/accessory_category/listMenu_accessory');
     

	}


	public function index()
	{

		
		

	$data['comment_item_accessory_notregister'] = $this->model->get_comment_accessory_usernot_register();
	$data['comment_item_accessory_register'] = $this->model->get_comment_accessory_user_register();
    $this->load->view('admin/comment_accessory/view_comment_accessory',$data);
     $this->load->view('admin/footer');

	}
	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$this->model->delete(array('id'=>$id),'comment');
		header("location:".site_url('admin/accessory/comment_accessory/index'));

	}
	

}