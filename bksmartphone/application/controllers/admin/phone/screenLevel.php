 <?php
defined('BASEPATH') OR exit('No direct script access allowed');

class screenLevel extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/version_os/listMenu');
    

	}


	public function index()
	{


		$data['screenLevel'] = $this->model->get_screen_level();	
       	$this->load->view('admin/screenLevel/view_screenLevel',$data);
       	  $this->load->view('admin/footer');

	}

	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$this->model->delete(array('id'=>$id),'screen_level');
		header("location:".site_url('admin/phone/screenLevel/index'));

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

		   		$num = $this->model->get_num_name_screen_level($name);
		   		if($num <= 0)
		   		{
		   			$this->model->add_screen_level('screen_level',$arr);
		   			header("location:".site_url('admin/phone/screenLevel/index'));

		   		}
		   		else
		   		{

		   			$data['error']  = "Tên độ màn hình đã có.";
		   		}

		   	}

		}
			$this->load->view('admin/screenLevel/insert_screenlevel',$data);

	}

	public function update($id)
	{


		$id = $this->uri->segment(5);
		$data['error'] ='';
		$data['screen_level_edit'] = $this->model->edit_screen_level($id);
		
	

		if(isset($_POST['submit']))
		{

			$arr['name'] = $name=  $this->input->post('name');		
			$this->form_validation->set_rules('name','Name','required');
		  

		   	if($this->form_validation->run()== TRUE)
		   	{


		   		// $num = $this->model->get_num_screen_level($name);
		   		// if($num <= 0)
		   		// {
		   			$this->model->update(array('id'=>$id),'screen_level',$arr);
		   			header("location:".site_url('admin/phone/screenLevel/index'));

		   		// }
		   		// else
		   		// {

		   		// 	$data['error']  = "Tên độ màn hình đã có.";
		   		// }

		   	}

		}

		$this->load->view('admin/screenLevel/update_screenlevel',$data);	

	}

	
}
