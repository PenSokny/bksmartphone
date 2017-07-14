<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class accessory_color extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/accessory_category/listMenu_accessory');
    

	}


	public function index()
	{


		$data['accessory_color'] = $this->model->get_accessory_color();
       	$this->load->view('admin/accessory_color/view_accessory_color',$data);
       	  $this->load->view('admin/footer');

	}

	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$this->model->delete(array('id'=>$id),'accessories_color');
		header("location:".site_url('admin/accessory/accessory_color/index'));

	}

	public function insert()
	{
		$data['error'] ='';
		$data['accessory_name'] = $this->model->get_name_accessory();
		$data['color'] = $this->model->get_name_color();

		if(isset($_POST['submit']))
		{

			
			$arr['accessories_id'] =   $this->input->post('accessory_id');
			$arr['color_id'] = $this->input->post('color_id');

			$this->form_validation->set_rules('accessory_id','Accessory_id','required');
		   	$this->form_validation->set_rules('color_id','Color_id','required');

		   	if($this->form_validation->run()== TRUE)
		   	{
		   		
		   			$this->model->add_color_accessory('accessories_color',$arr);
		   			header("location:".site_url('admin/accessory/accessory_color/index'));

		   	}

		}
			$this->load->view('admin/accessory_color/insert_accessory_color',$data);
			$this->load->view('admin/footer');

	}
	public function update($id)
	{


		$id = $this->uri->segment(5);
		$data['error'] ='';
		$data['accessory_name'] = $this->model->get_name_accessory();
		$data['color'] = $this->model->get_name_color();
		$data['accessory_selected'] = $this->model->accessory_color_selected($id);
		$data['color_selected'] = $this->model->color_accessory_selected($id);
	

		if(isset($_POST['submit']))
		{

			$arr['accessories_id'] = $name=  $this->input->post('accessory_id');
			$arr['color_id'] = $id_os= $this->input->post('color_id');

			$this->form_validation->set_rules('accessory_id','Accessory_id','required');
		   	$this->form_validation->set_rules('color_id','Color_id','required');

		   	if($this->form_validation->run()== TRUE)
		   	{

	   	
		   			$this->model->update(array('id'=>$id),'accessories_color',$arr);
		   			header("location:".site_url('admin/accessory/accessory_color/index'));
		   	}

		}

		$this->load->view('admin/accessory_color/update_accessory_color',$data);
		$this->load->view('admin/footer');	

	}

}
