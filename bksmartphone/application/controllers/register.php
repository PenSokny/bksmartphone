<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class register extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
	
		

	}


	public function sign_in()
	{	
		$data['error'] = "";
		if (isset($_POST['submit']))
		{
			$email = $this->input->post('email');
			$pass = md5($this->input->post('password'));
			$this->form_validation->set_rules('email', 'Email', 'required');
		   	$this->form_validation->set_rules('password', 'Password', 'required','trim|required|valid_email');
			$sql = "select * from users where email='$email' and password='$pass'" ;
			$num = $this->model->get_num_register($sql);
			$vdata['permission'] = $this->model->get_user($sql);
			$permission = $vdata['permission']['permission_id'];
			if($this->form_validation->run() == TRUE)
			{
				if($num > 0 && $permission == 1 )
				{
					$arr = $this->model->get_user($sql);
					$this->session->set_userdata($arr);
					header("location:".site_url('admin/phone/phone/index'));
				}
				else if($num > 0 && $permission == 2 )
				{
					$arr = $this->model->get_user($sql);
					$this->session->set_userdata($arr);
					header("location:".site_url('home/index'));


				}
				else
				{
					$data['error'] = "Wrong email or password!";
				}
			}


		}
		if(isset($_POST['sign_up']))
		{
			header("location:".site_url('register/sign_up'));

		}
		$this->load->view('sign_in',$data);

	}

	public function sign_up()
	{

		$this->load->view('header');
		$data['success']="";
		$data['error'] = "";

		if (isset($_POST['submit']))
		{

			$arr['username'] = $username= $this->input->post('username');
			$arr['password'] = md5($this->input->post('password'));
			$arr['permission_id'] = 2;
			$arr['fullname'] = $this->input->post('fullname');
			$arr['email'] = $this->input->post('email');
			$arr['gender'] = $this->input->post('gender');
			$arr['phone_number'] = $this->input->post('phonenumber');
			$arr['address'] = $this->input->post('address');
		   
		   	$this->form_validation->set_rules('username', 'Username', 'required');
		   	$this->form_validation->set_rules('password', 'Password', 'required');
		   	$this->form_validation->set_rules('fullname', 'Fullname', 'required');
		   	$this->form_validation->set_rules('email', 'Email', 'required', 'trim|required|valid_email');
		   	$this->form_validation->set_rules('phonenumber', 'Phonenumber', 'required');
		   	$this->form_validation->set_rules('address', 'Address', 'required');

			$num = $this->model->get_num_users("select * from users where username='$username'");
			if($this->form_validation->run() == TRUE)
			{
				if($num > 0 )
				{
				
					$data['error'] = 'Username đã tồn tại.Xin Quy Khách nhập tên Username khác';
				}
		    
				else if($num <= 0 )
				{
				
		
					$this->model->add_customer('users',$arr);
					header("location:".site_url('register/sign_up_success'));
				
				}
			}


		}
		$this->load->view('sign_up',$data);

	}

	public function sign_out()
	{

		$this->session->sess_destroy();
		header("location:".site_url('home/index'));

	}
	public function sign_up_success()
	{

		$this->load->view('sign_up_success');

	}

	public function profile()
	{


		$id = $this->session->userdata('id');
		
		$data['user_infor'] = $this->model->get_profile($id);
		$this->load->view('header');
		$this->load->view('profile',$data);
		$this->load->view('footer');
		
		

	}
	public function InputPassword()
	{

		$data['error'] = '';
		$this->load->view('header');
		$this->load->view('InputPassword',$data);
		$this->load->view('footer');


	}
	public function ConfirmPassword()
	{

		$data['error'] = '';

		$password = md5($this->input->post('password'));
		$id_user = $this->session->userdata('id') ;
		$real_pass = $this->model->confirmPassword($id_user) ; 

		if($password == $real_pass['password'])
		{


			 $data['username'] = $this->session->userdata('username') ; 
			 $data['password'] = $this->session->userdata('password');
			 $data['fullname'] = $this->session->userdata('fullname');
			 $data['email'] = $this->session->userdata('email');
			 $data['gender'] = $this->session->userdata('gender');
			 $data['phone_number'] = $this->session->userdata('phone_number');
			 $data['address'] = $this->session->userdata('address');

	 		

			$this->load->view('header');
			$this->load->view('ChangeInfor',$data);
			$this->load->view('footer');
		}else
		{

			$data['error'] = "Mặt khẩu của bạn không đúng!";
 			$this->load->view('header');
			$this->load->view('InputPassword',$data);
			$this->load->view('footer');


		}
	
		
	}

	public function Update_ChangeInfor()
	{

		if (isset($_POST['submit']))
		{

			$id = $this->session->userdata('id');
			$arr['username'] = $this->input->post('username');
			$arr['password'] = md5($this->input->post('password'));
			$arr['permission_id'] = $this->session->userdata('permission_id');
			$arr['fullname'] = $this->input->post('fullname');
			$arr['email'] = $this->input->post('email');
			$arr['gender'] = $this->input->post('gender');
			$arr['phone_number'] = $this->input->post('phone_number');
			$arr['address'] = $this->input->post('address');


			$this->form_validation->set_rules('username', 'Username', 'required');
			$this->form_validation->set_rules('password', 'Password', 'required');
			$this->form_validation->set_rules('fullname', 'Fullname', 'required');
			$this->form_validation->set_rules('email', 'Email', 'required');
			$this->form_validation->set_rules('phone_number', 'Phone_Number', 'required');
			$this->form_validation->set_rules('address', 'Address', 'required');

			if($this->form_validation->run() == TRUE)
			{


				$this->model->update(array('id'=>$id),'users',$arr);
		   		header("location:".site_url('register/profile'));


			}
			$this->load->view('header');
			$this->load->view('ChangeInfor',$arr);
			$this->load->view('footer');

		}


	}


}
