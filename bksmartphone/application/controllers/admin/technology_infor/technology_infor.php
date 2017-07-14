<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class technology_infor extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/technology_infor_category/listMenu_technology_infor');
     

	}


	public function index()
	{

		$data['technology_infor'] = $this->model->get_technology_infors();
		$data['path'] = 'technology_infor/';
       	$this->load->view('admin/technology_infor/view_technology_infor',$data);
       	$this->load->view('admin/footer');

	}
	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$image = $this->model->get_techinfo_by_id($id)->image;
		unlink('assets/upload_image/technology_infor/'.$image);
		$this->model->delete(array('id'=>$id),'technology_infor');
		header("location:".site_url('admin/technology_infor/technology_infor/index'));


	}
	public function insert()
	{
		$data['error'] ='';
		$data['tech_cate_id'] = $this->model->get_technology_infors_category();
		$data['phone_id'] = $this->model->get_phone_id();
		if(isset($_POST['submit']))
		{

			$image = $this->do_upload();
			$this->form_validation->set_rules('name','Name','required');
			$this->form_validation->set_rules('description','Description','required');
			$this->form_validation->set_rules('main_des','main_des','required');
			$this->form_validation->set_rules('id_tech_category','id_tech_category','required');
			$this->form_validation->set_rules('id_phone','id_phone','required');
			
			$arr['name'] = $this->input->post('name');
			$arr['description'] = $this->input->post('description');
			$arr['main_description'] = $this->input->post('main_des');
			$arr['tech_infor_category_id'] = $this->input->post('id_tech_category');
			$arr['product_id'] = $this->input->post('id_phone');
		   	if($this->form_validation->run()== TRUE)
		   	{
		   		
				if(isset($image['error'])){
					$this->session->set_flashdata('error_image', $image['error']);
					redirect("admin/technology_infor/technology_infor/insert");
				}
				else
				{
					$arr['image'] = $image;
					$this->model->add_technology_infor('technology_infor',$arr);
					header("location:".site_url('admin/technology_infor/technology_infor/index'));


				}
			
		   	}		
		 	
		}
			$this->load->view('admin/technology_infor/insert_technology_infor',$data);

	}
	public function do_upload(){
		$config = array();
		$config['upload_path'] = 'assets/upload_image/technology_infor';
		$config['allowed_types'] = 'gif|jpg|png';
		$config['overwrite'] = TRUE;
		$this->load->library('upload', $config);
		$this->upload->initialize($config);
		
		if(!$this->upload->do_upload('image')){
			return array('error'=> $this->upload->display_errors());
		}else{
			return $this->upload->data()['file_name'];
		}
		
	}

	public function update($id)
	{

		$data['error'] ='';
		$data['tech_cate_id'] = $this->model->get_technology_infors_category();
		$data['phone_id'] = $this->model->get_phone_id();
		$data['techinfor'] = $this->model->get_techinfo_by_id($id);
		$image = $this->model->get_techinfo_by_id($id)->image;
		if(isset($_POST['submit']))
		{
			

			if(!empty($_FILES['image']['name']))
			{

				unlink('assets/upload_image/technology_infor/'.$image);
			 	$arr['image'] = $this->do_upload();

			 	$this->model->update_technology_infor($arr, $id);
				header("location:".site_url('admin/technology_infor/technology_infor/index'));


			}else
			{


				$arr['name'] = $this->input->post('name');
				$arr['description'] = $this->input->post('description');
			 	$arr['main_description'] = $this->input->post('main_des');
				$arr['tech_infor_category_id'] = $this->input->post('id_tech_category');
			 	$arr['product_id'] = $this->input->post('id_phone');

			 	$this->model->update_technology_infor($arr, $id);
				header("location:".site_url('admin/technology_infor/technology_infor/index'));



			}
			// $arr['name'] = $this->input->post('name');
			// $arr['description'] = $this->input->post('description');
			// $arr['main_description'] = $this->input->post('main_des');
			// $arr['tech_infor_category_id'] = $this->input->post('id_tech_category');
			// $arr['product_id'] = $this->input->post('id_phone');

			
			// if(isset($_FILES['image']['name']))
			// {
			// 		unlink('assets/upload_image/technology_infor/'.$image);
			// 		$arr['image'] = $this->do_upload();
				
			// }
			
			
			// $this->model->update_technology_infor($arr, $id);
			// header("location:".site_url('admin/technology_infor/technology_infor/index'));
		 	
		}
		$this->load->view('admin/technology_infor/update_technology_infor',$data);

	}
}