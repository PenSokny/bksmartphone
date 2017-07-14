<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class comment_phone extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/version_os/listMenu');
    

	}


	public function index()
	{

		
		

		$data['comment_item_phone_notregister'] = $this->model->get_comment_phone_usernot_register();
		$data['comment_item_phone_register'] = $this->model->get_comment_phone_user_register();
       	$this->load->view('admin/comment_phone/view_comment_phone',$data);
       	  $this->load->view('admin/footer');

	}
	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$this->model->delete(array('id'=>$id),'comment');
		header("location:".site_url('admin/phone/comment_phone/index'));

	}
	

}