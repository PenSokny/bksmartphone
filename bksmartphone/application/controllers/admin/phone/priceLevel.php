<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class priceLevel extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/version_os/listMenu');
     

	}


	public function index()
	{


		$data['priceLevel'] = $this->model->get_priceLevel();
       	$this->load->view('admin/priceLevel/view_priceLevel',$data);
       	 $this->load->view('admin/footer');

	}
	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$this->model->delete(array('id'=>$id),'price_level');
		header("location:".site_url('admin/phone/priceLevel/index'));

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

		   		$num = $this->model->get_num_name_price_level($name);
		   		if($num <= 0)
		   		{
		   			$this->model->add_price_level('price_level',$arr);
		   			header("location:".site_url('admin/phone/priceLevel/index'));

		   		}
		   		else
		   		{

		   			$data['error']  = "Tên mức giá đã có.";
		   		}

		   	}

		}
			$this->load->view('admin/priceLevel/insert_priceLevel',$data);

	}

	public function update($id)
	{


		$id = $this->uri->segment(5);
		$data['error'] ='';
		$data['price_level_edit'] = $this->model->edit_price_level($id);
		
	

		if(isset($_POST['submit']))
		{

			$arr['name'] = $name=  $this->input->post('name');		
			$this->form_validation->set_rules('name','Name','required');
		  

		   	if($this->form_validation->run()== TRUE)
		   	{


		   		// $num = $this->model->get_num_price_level($name);
		   		// if($num <= 0)
		   		// {
		   			$this->model->update(array('id'=>$id),'price_level',$arr);
		   			header("location:".site_url('admin/phone/priceLevel/index'));

		   		// }
		   		// else
		   		// {

		   		// 	$data['error']  = "Tên mức giá đã có.";
		   		// }

		   	}

		}

		$this->load->view('admin/priceLevel/update_pricelevel',$data);	

	}



}