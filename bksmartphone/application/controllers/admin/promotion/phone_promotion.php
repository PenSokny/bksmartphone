<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class phone_promotion extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/phone_promotion/listMenu');
    

	}


	public function index()
	{


		$data['phone'] = $this->model->get_promotion_phone();
       	$this->load->view('admin/phone_promotion/view_phone',$data);
       	  $this->load->view('admin/footer');

	}
	public function update($id)
	{


		$id = $this->uri->segment(5);
		$data['error'] ='';
		$data['phone_promotion_edit'] = $this->model->edit_promotion_phone($id);
		
	

		if(isset($_POST['submit']))
		{

			$arr['name'] = $name=  $this->input->post('phone_name');
			$arr['promotion_percent'] = $name=  $this->input->post('promotion');

			$this->form_validation->set_rules('phone_name','Phone_name','required');
			$this->form_validation->set_rules('promotion','Promotion','required');
		  

		   	if($this->form_validation->run()== TRUE)
		   	{


		   		
		   			$this->model->update(array('id'=>$id),'product',$arr);
		   			header("location:".site_url('admin/promotion/phone_promotion/index'));
		   	}

		}

		$this->load->view('admin/phone_promotion/update_phone_promotion',$data);
		$this->load->view('admin/footer');	

	}
}