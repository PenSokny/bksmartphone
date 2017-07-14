<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class operatingSystem extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/version_os/listMenu');
     

	}


	public function index()
	{


	
		$data['operatingSystem'] = $this->model->get_operatingSystem();
       	$this->load->view('admin/operatingSystem/view_operatingSystem',$data);
       	 $this->load->view('admin/footer');

	}
	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$this->model->delete(array('id'=>$id),'operating_system');
		header("location:".site_url('admin/phone/operatingSystem/index'));

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

		   		$num = $this->model->get_num_name_operatingSystem($name);
		   		if($num <= 0)
		   		{
		   			$this->model->add_operatingSystem('operating_system',$arr);
		   			header("location:".site_url('admin/phone/operatingSystem/index'));

		   		}
		   		else
		   		{

		   			$data['error']  = "Tên hệ điều hành đã có.";
		   		}

		   	}

		}
			$this->load->view('admin/operatingSystem/insert_operatingSystem',$data);

	}

	public function update($id)
	{


		$id = $this->uri->segment(5);
		$data['error'] ='';
		$data['operating_system_edit'] = $this->model->edit_operating_system($id);
		
	

		if(isset($_POST['submit']))
		{

			$arr['name'] = $name=  $this->input->post('name');		
			$this->form_validation->set_rules('name','Name','required');
		  

		   	if($this->form_validation->run()== TRUE)
		   	{


		   		// $num = $this->model->get_num_operating_system($name);
		   		// if($num <= 0)
		   		// {
		   			$this->model->update(array('id'=>$id),'operating_system',$arr);
		   			header("location:".site_url('admin/phone/operatingSystem/index'));

		   		// }
		   		// else
		   		// {

		   		// 	$data['error']  = "Tên hệ điều hành đã có.";
		   		// }

		   	}

		}

		$this->load->view('admin/operatingSystem/update_operatingSystem',$data);	

	}


}