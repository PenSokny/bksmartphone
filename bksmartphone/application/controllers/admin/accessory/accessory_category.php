<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class accessory_category extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/accessory_category/listMenu_accessory');
     

	}


	public function index()
	{
		
		$data['accessory_category'] = $this->model->get_accessory_category();
       	$this->load->view('admin/accessory_category/view_accessory_category',$data);
       	 	$this->load->view('admin/footer');

	}
	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$this->model->delete(array('id'=>$id),'accessories_category');
		header("location:".site_url('admin/accessory/accessory_category/index'));

	}
	public function insert()
	{
		$data['error'] ='';
		//$data['operatingSystem'] = $this->model->get_name_operatingSystem();

		if(isset($_POST['submit']))
		{
			
			$arr['name'] = $name=  $this->input->post('name');			
			$this->form_validation->set_rules('name','Name','required');		   
		   	if($this->form_validation->run()== TRUE)
		   	{

		   		$num = $this->model->get_num_name_accessory_category($name);
		   		if($num <= 0)
		   		{
		   			$this->model->add_accessory_category('accessories_category',$arr);
		   			header("location:".site_url('admin/accessory/accessory_category/index'));

		   		}
		   		else
		   		{

		   			$data['error']  = "Tên loại phụ kiện đã có.";
		   		}

		   	}

		}
			$this->load->view('admin/accessory_category/insert_accessory_category',$data);
			$this->load->view('admin/footer');

	}
	public function update($id)
	{


		$id = $this->uri->segment(5);
		$data['error'] ='';
		$data['accessory_category_edit'] = $this->model->edit_accessory_category($id);
		
	

		if(isset($_POST['submit']))
		{

			$arr['name'] = $name=  $this->input->post('name');		
			$this->form_validation->set_rules('name','Name','required');
		  

		   	if($this->form_validation->run()== TRUE)
		   	{


		   		$num = $this->model->get_num_accessory_category($name);
		   		if($num <= 0)
		   		{
		   			$this->model->update(array('id'=>$id),'accessories_category',$arr);
		   			header("location:".site_url('admin/accessory/accessory_category/index'));

		   		}
		   		else
		   		{

		   			$data['error']  = "Tên loại phụ kiện đã có.";
		   		}

		   	}

		}

		$this->load->view('admin/accessory_category/update_accessory_category',$data);
		$this->load->view('admin/footer');	

	}

}