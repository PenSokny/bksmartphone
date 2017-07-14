<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class user_register extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/user_register/listMenu_user');
     

	}


	public function index()
	{

		
		


	
		$data['users'] = $this->model->get_users();
       	$this->load->view('admin/user_register/view_user_register',$data);
       	 $this->load->view('admin/footer');

	}
	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$this->model->delete(array('id'=>$id),'users');
		header("location:".site_url('admin/user/user_register/index'));

	}
	public function insert()
	{
		$data['error'] ='';


		if(isset($_POST['submit']))
		{
		
			$arr['username'] = $name=  $this->input->post('username');	
			$arr['password'] =  MD5($this->input->post('password'));
			$arr['permission_id'] =  $this->input->post('permission_id');
			$arr['fullname'] =   $this->input->post('fullname');	
			$arr['email'] =   $this->input->post('email');
			$arr['gender'] =  $this->input->post('gender');
			$arr['phone_number'] = $name=  $this->input->post('phonenumber');	
			$arr['address'] = $name=  $this->input->post('address');

			$this->form_validation->set_rules('username','Username','required');
			$this->form_validation->set_rules('password','Password','required');
			$this->form_validation->set_rules('permission_id','Permission_id','required');
			$this->form_validation->set_rules('fullname','Fullname','required');
			$this->form_validation->set_rules('email','Email','required');
			$this->form_validation->set_rules('gender','Gender','required');
			$this->form_validation->set_rules('phonenumber','Phonenumber','required');
			$this->form_validation->set_rules('address','Address','required');

		   	if($this->form_validation->run()== TRUE)
		   	{

		   		$num = $this->model->get_num_name_user($name);
		   		if($num <= 0)
		   		{
		   			$this->model->add_user_register('users',$arr);
		   			header("location:".site_url('admin/user/user_register/index'));

		   		}
		   		else
		   		{

		   			$data['error']  = "Username đã có.";
		   		}

		   	}

		}
			$this->load->view('admin/user_register/insert_user_register',$data);

	}
	public function update($id)
	{


		$id = $this->uri->segment(5);
		$data['error'] ='';
		$data['user_register_edit'] = $this->model->edit_user_register($id);
		
	

		if(isset($_POST['submit']))
		{

			
			$arr['permission_id'] =  $this->input->post('permission_id');	
			$this->form_validation->set_rules('permission_id','Permission_id','required');

		   	if($this->form_validation->run()== TRUE)
		   	{


		   		$num = $this->model->get_num_user_register($name);
		   		if($num <= 0)
		   		{
		   			$this->model->update(array('id'=>$id),'users',$arr);
		   			header("location:".site_url('admin/user/user_register/index'));

		   		}
		   		else
		   		{

		   			$data['error']  = "Username đã có.";
		   		}

		   	}

		}

		$this->load->view('admin/user_register/update_user_register',$data);	

	}
}