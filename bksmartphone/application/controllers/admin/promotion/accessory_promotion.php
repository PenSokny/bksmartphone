<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class accessory_promotion extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/phone_promotion/listMenu');
     

	}


	public function index()
	{


		$data['accessory'] = $this->model->get_promotion_accessory();
       	$this->load->view('admin/accessory_promotion/view_accessory',$data);
       	 $this->load->view('admin/footer');

	}
	public function update($id)
	{


		$id = $this->uri->segment(5);
		$data['error'] ='';
		$data['accessory_promotion_edit'] = $this->model->edit_promotion_accessory($id);
		
	

		if(isset($_POST['submit']))
		{

			$arr['name'] = $name=  $this->input->post('accessory_name');
			$arr['promotion_percent'] = $name=  $this->input->post('promotion');

			$this->form_validation->set_rules('accessory_name','Accessory_name','required');
			$this->form_validation->set_rules('promotion','Promotion','required');
		  

		   	if($this->form_validation->run()== TRUE)
		   	{


		   		
		   			$this->model->update(array('id'=>$id),'accessories',$arr);
		   			header("location:".site_url('admin/promotion/accessory_promotion/index'));
		   	}

		}

		$this->load->view('admin/accessory_promotion/update_accessory_promotion',$data);
		$this->load->view('admin/footer');	

	}
}