<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class phone_order extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/phone_order/listMenu');
    

	}


	public function index()
	{

		
		

		$data['phone_usernotregister'] = $this->model->get_phone_order_usernotregister();
		$data['phone_userregister'] = $this->model->get_phone_order_userregister();
       	$this->load->view('admin/phone_order/view_phone_order',$data);
       	$this->load->view('admin/footer');

	}
	public function update($id,$id_order)
	{

		$id = $this->uri->segment(5);
		$id_order = $this->uri->segment(6);
		$arr['product_id'] = null;

		$data = $this->model->value_null_ornot_phone($id);

		foreach ($data as $row) {
			if($row['accessory_id'] == null)
			{

				$this->model->delete(array('id'=>$id_order),'orders');
			}
			else
			{

				$this->model->update(array('id_receipt'=>$id),'orders',$arr);
			}

		}
		// if($data['accessory_id'] == null)
		// {
		// 	$this->model->delete(array('id'=>$id_order),'orders');

		// }
		// else
		// {
		// 	$this->model->update(array('id_receipt'=>$id),'orders',$arr);

		// }	
		header("location:".site_url('admin/order/phone_order/index'));

	}
	

}