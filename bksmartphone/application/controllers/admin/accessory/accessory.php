<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class accessory extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/accessory_category/listMenu_accessory');
		
      

	}


	public function index()
	{
		
		$data['accessory'] = $this->model->get_accessory();
       	$this->load->view('admin/accessory/view_accessory',$data);
       	$this->load->view('admin/footer');

	}
	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$this->model->delete(array('id'=>$id),'accessories');
		header("location:".site_url('admin/accessory/accessory/index'));

	}
	public function insert()
	{
		$data['error'] ='';
		$data['accessory_category_id'] = $this->model->get_name_accessory_category();
		$data['product_id'] = $this->model->get_product_id();

		if(isset($_POST['submit']))
		{
			
			$arr['name'] = $name=  $this->input->post('accessory_name');
			$arr['price'] =  $this->input->post('accessory_price');
			$arr['long_des'] =   $this->input->post('long_des');
			$arr['short_des'] =   $this->input->post('short_des');
		//	$arr['main_des'] =  $this->input->post('main_des');
			$arr['accessories_category_id'] =   $this->input->post('id_accessory_category');	
			$arr['product_id'] =  $this->input->post('id_phone');	

			$this->form_validation->set_rules('accessory_name','Name','required');
			$this->form_validation->set_rules('accessory_price','Price','required');
		//	$this->form_validation->set_rules('long_des','Long_des','required');
		//	$this->form_validation->set_rules('short_des','Short_des','required');
		//	$this->form_validation->set_rules('main_des','Main_des','required');
			$this->form_validation->set_rules('id_accessory_category','Accessories_category_id','required');
			$this->form_validation->set_rules('id_phone','Product_id','required');		   
		   	if($this->form_validation->run()== TRUE)
		   	{

		   		$num = $this->model->get_num_name_accessory($name);
		   		if($num <= 0)
		   		{
		   			$this->model->add_accessory('accessories',$arr);
		   			header("location:".site_url('admin/accessory/accessory/index'));

		   		}
		   		else
		   		{

		   			$data['error']  = "Tên  phụ kiện đã có.";
		   		}

		   	}

		}
			$this->load->view('admin/accessory/insert_accessory',$data);
			$this->load->view('admin/footer');

	}
	public function update($id)
	{


		$id = $this->uri->segment(5);
		$data['error'] ='';
		$data['accessory_category_id'] = $this->model->get_name_accessory_category();
		$data['product_id'] = $this->model->get_product_id();
		$data['accessory_category_id_edit'] = $this->model->edit_accessory_category_id($id);
		$data['phone_id_edit'] = $this->model->edit_phone_id($id);
		$data['accessory_edit'] =   $this->model->get_accessory_update($id) ;
		
	

		if(isset($_POST['submit']))
		{

			$arr['name'] = $name=  $this->input->post('accessory_name');
			$arr['price'] =  $this->input->post('accessory_price');
			$arr['long_des'] =   $this->input->post('long_des');
			$arr['short_des'] =   $this->input->post('short_des');
		//	$arr['main_des'] =  $this->input->post('main_des');
			$arr['accessories_category_id'] =   $this->input->post('accessory_category_id');	
			$arr['product_id'] =  $this->input->post('id_phone');	

			$this->form_validation->set_rules('accessory_name','Name','required');
			$this->form_validation->set_rules('accessory_price','Price','required');
		//	$this->form_validation->set_rules('long_des','Long_des','required');
		//	$this->form_validation->set_rules('short_des','Short_des','required');
		//	$this->form_validation->set_rules('main_des','Main_des','required');
			$this->form_validation->set_rules('accessory_category_id','Accessories_category_id','required');
			$this->form_validation->set_rules('id_phone','Product_id','required');	
		  

		   	if($this->form_validation->run()== TRUE)
		   	{
  		
		   			$this->model->update(array('id'=>$id),'accessories',$arr);
		   			header("location:".site_url('admin/accessory/accessory/index'));

		   	}

		}

		$this->load->view('admin/accessory/update_accessory',$data);
		$this->load->view('admin/footer');	

	}

}