<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class accessory_order extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/phone_order/listMenu');
  

	}


	public function index()
	{

		
		

		$data['accessory_usernotregister'] = $this->model->get_accessory_order_usernotregister();
		$data['accessory_userregister'] = $this->model->get_accessory_order_userregister();
       	$this->load->view('admin/accessory_order/view_accessory_order',$data);
       	    $this->load->view('admin/footer');

	}
	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$arr['accessory_id'] = null;
	    $data = $this->model->value_null_ornot($id);
	    if($data['product_id']  == null)
	    {

	    	$this->model->delete(array('id'=>$id),'orders');
	    }
	    else
	    {
	    	$this->model->update(array('id'=>$id),'orders',$arr);

	    }
		
		header("location:".site_url('admin/order/accessory_order/index'));

	}
	

}