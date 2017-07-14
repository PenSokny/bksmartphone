<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class brand extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/version_os/listMenu');
     

	}


	public function index()
	{

		
		

		$data['brand'] = $this->model->get_brand();
       	$this->load->view('admin/brand/view_brand',$data);
       	 $this->load->view('admin/footer');

	}
	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$this->model->delete(array('id'=>$id),'brand');
		header("location:".site_url('admin/phone/brand/index'));

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

		   		$num = $this->model->get_num_name_brand($name);
		   		if($num <= 0)
		   		{
		   			$this->model->add_brand('brand',$arr);
		   			header("location:".site_url('admin/phone/brand/index'));

		   		}
		   		else
		   		{

		   			$data['error']  = "Tên thể loại điện thoại đã có.";
		   		}

		   	}

		}
			$this->load->view('admin/brand/insert_brand',$data);
			$this->load->view('admin/footer');

	}
	public function update($id)
	{


		$id = $this->uri->segment(5);
		$data['error'] ='';
		$data['brand_edit'] = $this->model->edit_brand($id);
		
	

		if(isset($_POST['submit']))
		{

			$arr['name'] = $name=  $this->input->post('name');		
			$this->form_validation->set_rules('name','Name','required');
		  

		   	if($this->form_validation->run()== TRUE)
		   	{


		   		// $num = $this->model->get_num_brand($name);
		   		// if($num <= 0)
		   		// {
		   			$this->model->update(array('id'=>$id),'brand',$arr);
		   			header("location:".site_url('admin/phone/brand/index'));

		   		// }
		   		// else
		   		// {

		   		// 	$data['error']  = "Tên thể loại điện thoại đã có.";
		   		// }

		   	}

		}

		$this->load->view('admin/brand/update_brand',$data);
		$this->load->view('admin/footer');	

	}

}