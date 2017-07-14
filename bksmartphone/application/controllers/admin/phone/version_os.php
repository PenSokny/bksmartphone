<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class version_os extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/version_os/listMenu');
     

	}


	public function index()
	{


		$data['version_os'] = $this->model->get_version_os();
	//	$data['pagination'] = $this->pagination->create_links();
	//	$data['operatingSystem'] = $this->model->get_name_operatingSystem();

		
		
       	$this->load->view('admin/version_os/view_version',$data);
       	 $this->load->view('admin/footer');

	}

	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$this->model->delete(array('id'=>$id),'version_os');
		header("location:".site_url('admin/phone/version_os/index'));

	}

	public function insert()
	{
		$data['error'] ='';
		$data['operatingSystem'] = $this->model->get_name_operatingSystem();

		if(isset($_POST['submit']))
		{

			
			$arr['name'] = $name=  $this->input->post('name');
			$arr['operating_system_id'] = $this->input->post('operatingSystem');

			$this->form_validation->set_rules('name','Name','required');
		   	$this->form_validation->set_rules('operatingSystem','Operating_system_id','required');

		   	if($this->form_validation->run()== TRUE)
		   	{

		   		$num = $this->model->get_num_name_version_os($name);
		   		if($num <= 0)
		   		{
		   			$this->model->add_version_os('version_os',$arr);
		   			header("location:".site_url('admin/phone/version_os/index'));

		   		}
		   		else
		   		{

		   			$data['error']  = "Tên phiên bản hệ điều hành đã có.";
		   		}

		   	}

		}
			$this->load->view('admin/version_os/insert_version',$data);

	}
	public function update($id)
	{


		$id = $this->uri->segment(5);
		$data['error'] ='';
		$data['operatingSystem'] = $this->model->get_name_operatingSystem();
		$data['version_os_edit'] = $this->model->edit_version_os($id);
		$data['version_os_selected'] = $this->model->edit_version_os($id);
	

		if(isset($_POST['submit']))
		{

			$arr['name'] = $name=  $this->input->post('name');
			$arr['operating_system_id'] = $id_os= $this->input->post('id_os');

			$this->form_validation->set_rules('name','Name','required');
		   	$this->form_validation->set_rules('id_os','Operating_system_id','required');

		   	if($this->form_validation->run()== TRUE)
		   	{


		   		// $num = $this->model->get_num_os($name,$id_os);
		   		// if($num <= 0)
		   		// {
		   			$this->model->update(array('id'=>$id),'version_os',$arr);
		   			header("location:".site_url('admin/phone/version_os/index'));

		   		// }
		   		// else
		   		// {

		   		// 	$data['error']  = "Tên phiên bản hệ điều hành đã có.";
		   		// }

		   	}

		}

		$this->load->view('admin/version_os/update_version',$data);	

	}

}
