<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class comment_techinfor extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/technology_infor_category/listMenu_technology_infor');
    

	}


	public function index()
	{

		
		

	$data['comment_item_techinfor_notregister'] = $this->model->get_comment_techinfor_usernot_register();
	$data['comment_item_techinfor_register'] = $this->model->get_comment_techinfor_user_register();
    $this->load->view('admin/comment_techinfor/view_comment_techinfor',$data);
      $this->load->view('admin/footer');

	}
	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$this->model->delete(array('id'=>$id),'comment');
		header("location:".site_url('admin/technology_infor/comment_techinfor/index'));

	}
	

}