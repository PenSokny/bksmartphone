<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class color extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/version_os/listMenu');
    

	}


	public function index()
	{

		
		

		$data['color'] = $this->model->get_color();
       	$this->load->view('admin/color/view_color',$data);
       	  $this->load->view('admin/footer');

	}
	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$this->model->delete(array('id'=>$id),'color');
		header("location:".site_url('admin/phone/color/index'));

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

		   		$num = $this->model->get_num_name_color($name);
		   		if($num <= 0)
		   		{
		   			$this->model->add_color('color',$arr);
		   			header("location:".site_url('admin/phone/color/index'));

		   		}
		   		else
		   		{

		   			$data['error']  = "Tên màu đã có.";
		   		}

		   	}

		}
			$this->load->view('admin/color/insert_color',$data);

	}
	public function update($id)
	{


		$id = $this->uri->segment(5);
		$data['error'] ='';
		$data['color_edit'] = $this->model->edit_color($id);
		
	

		if(isset($_POST['submit']))
		{

			$arr['name'] = $name=  $this->input->post('name');		
			$this->form_validation->set_rules('name','Name','required');
		  

		   	if($this->form_validation->run()== TRUE)
		   	{


		   		// $num = $this->model->get_num_color($name);
		   		// if($num <= 0)
		   		// {
		   			$this->model->update(array('id'=>$id),'color',$arr);
		   			header("location:".site_url('admin/phone/color/index'));

		   		// }
		   		// else
		   		// {

		   		// 	$data['error']  = "Tên màu đã có.";
		   		// }

		   	}

		}

		$this->load->view('admin/color/update_color',$data);	

	}

}