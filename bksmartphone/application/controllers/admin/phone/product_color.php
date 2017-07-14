<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class product_color extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/version_os/listMenu');
    

	}


	public function index()
	{


		$data['product_color'] = $this->model->get_product_color();
       	$this->load->view('admin/product_color/view_product_color',$data);
       	  $this->load->view('admin/footer');

	}

	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$this->model->delete(array('id'=>$id),'product_color');
		header("location:".site_url('admin/phone/product_color/index'));

	}

	public function insert()
	{
		$data['error'] ='';
		$data['phone_name'] = $this->model->get_name_phone();
		$data['color'] = $this->model->get_name_color();

		if(isset($_POST['submit']))
		{

			
			$arr['product_id'] = $name=  $this->input->post('phone_id');
			$arr['color_id'] = $this->input->post('color_id');

			$this->form_validation->set_rules('phone_id','Phone_id','required');
		   	$this->form_validation->set_rules('color_id','Color_id','required');

		   	if($this->form_validation->run()== TRUE)
		   	{
		   		
		   			$this->model->add_color_phone('product_color',$arr);
		   			header("location:".site_url('admin/phone/product_color/index'));

		   	}

		}
			$this->load->view('admin/product_color/insert_product_color',$data);

	}
	public function update($id)
	{


		$id = $this->uri->segment(5);
		$data['error'] ='';
		$data['phone_name'] = $this->model->get_name_phone();
		$data['color'] = $this->model->get_name_color();
		$data['phone_selected'] = $this->model->product_color_selected($id);
		$data['color_selected'] = $this->model->color_selected($id);
	

		if(isset($_POST['submit']))
		{

			$arr['product_id'] = $name=  $this->input->post('phone_id');
			$arr['color_id'] = $id_os= $this->input->post('color_id');

			$this->form_validation->set_rules('phone_id','Phone_id','required');
		   	$this->form_validation->set_rules('color_id','Color_id','required');

		   	if($this->form_validation->run()== TRUE)
		   	{


		   		// $num = $this->model->get_num_product_color($name,$id_os);
		   		// if($num <= 0)
		   		// {
		   			$this->model->update(array('id'=>$id),'product_color',$arr);
		   			header("location:".site_url('admin/phone/product_color/index'));

		   		// }
		   		// else
		   		// {

		   		// 	$data['error']  = "ID điện thoại và ID màu đã có.";
		   		// }

		   	}

		}

		$this->load->view('admin/product_color/update_product_color',$data);	

	}

}
