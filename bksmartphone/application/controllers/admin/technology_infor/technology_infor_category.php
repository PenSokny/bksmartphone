<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class technology_infor_category extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/technology_infor_category/listMenu_technology_infor');
     

	}


	public function index()
	{

		$data['technology_infor_category'] = $this->model->get_technology_infor_category();
       	$this->load->view('admin/technology_infor_category/view_technology_infor_category',$data);
       	 $this->load->view('admin/footer');

	}
	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$this->model->delete(array('id'=>$id),'technology_infor_category');
		header("location:".site_url('admin/technology_infor/technology_infor_category/index'));

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

		   		$num = $this->model->get_num_name_technology_infor_category($name);
		   		if($num <= 0)
		   		{
		   			$this->model->add_technology_infor_category('technology_infor_category',$arr);
		   			header("location:".site_url('admin/technology_infor/technology_infor_category/index'));

		   		}
		   		else
		   		{

		   			$data['error']  = "Tên loại phụ kiện đã có.";
		   		}

		   	}

		}
			$this->load->view('admin/technology_infor_category/insert_technology_infor_category',$data);

	}
	public function update($id)
	{


		$id = $this->uri->segment(5);
		$data['error'] ='';
		$data['technology_infor_category_edit'] = $this->model->edit_technology_infor_category($id);
		
	

		if(isset($_POST['submit']))
		{

			$arr['name'] = $name=  $this->input->post('name');		
			$this->form_validation->set_rules('name','Name','required');
		  

		   	if($this->form_validation->run()== TRUE)
		   	{


		   		$num = $this->model->get_num_technology_infor_category($name);
		   		if($num <= 0)
		   		{
		   			$this->model->update(array('id'=>$id),'technology_infor_category',$arr);
		   			header("location:".site_url('admin/technology_infor/technology_infor_category/index'));

		   		}
		   		else
		   		{

		   			$data['error']  = "Tên thể loại công nghệ đã có.";
		   		}

		   	}

		}

		$this->load->view('admin/technology_infor_category/update_technology_infor_category',$data);	

	}
}