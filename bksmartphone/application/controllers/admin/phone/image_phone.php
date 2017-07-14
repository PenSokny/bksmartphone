<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class image_phone extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/version_os/listMenu');
     

	}


	public function index()
	{

		$data['image_phone'] = $this->model->get_image_phone();
		$data['path'] = 'phone/';
       	$this->load->view('admin/image_phone/view_image_phone',$data);
       	$this->load->view('admin/footer');

	}
	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$image = $this->model->get_image_phone_by_id($id)->img;
		unlink('assets/upload_image/phone/'.$image);
		$this->model->delete(array('id'=>$id),'image_product');
		header("location:".site_url('admin/phone/image_phone/index'));


	}
	public function insert()
	{
		$data['error'] ='';
		$data['phone_id'] = $this->model->get_phone_id();
		if(isset($_POST['submit']))
		{

			$image = $this->do_upload();
			$this->form_validation->set_rules('name','Name','required');
			$this->form_validation->set_rules('id_phone','ID phone','required');
			$this->form_validation->set_rules('type_image','Type Image','required');
			
			
			
			$arr['name'] = $this->input->post('name');
			$arr['product_id'] = $this->input->post('id_phone');
			$arr['type_image'] = $this->input->post('type_image');
		   	if($this->form_validation->run()== TRUE)
		   	{
		   		
				if(isset($image['error'])){
					$this->session->set_flashdata('error_image', $image['error']);
					redirect("admin/phone/image_phone/insert");
				}
				else
				{
					$arr['img'] = $image;
					$this->model->add_image_phone('image_product',$arr);
					header("location:".site_url('admin/phone/image_phone/index'));


				}
			
		   	}		
		 	
		}
			$this->load->view('admin/image_phone/insert_image_phone',$data);

	}
	public function do_upload(){
		$config['upload_path'] = 'assets/upload_image/phone';
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
		$data['phone_id'] = $this->model->get_phone_id();
		$data['image_phone_select'] = $this->model->get_image_phone_by_id($id);
		$image = $this->model->get_image_phone_by_id($id)->img;
		if(isset($_POST['submit']))
		{
				if(!empty($_FILES['image']['name']))
				{
					unlink('assets/upload_image/phone/'.$image);
					$data_insert['img'] = $this->do_upload();

					$this->model->update_image_phone($data_insert, $id);
					header("location:".site_url('admin/phone/image_phone/index'));
				}else{
					$data_insert = array(
						'name'=>$this->input->post('name'),
						'product_id'=>$this->input->post('id_phone'),
						'type_image'=>$this->input->post('type_image'),
					);
					$this->model->update_image_phone($data_insert, $id);
					header("location:".site_url('admin/phone/image_phone/index'));
				} 	
		}
		$this->load->view('admin/image_phone/update_image_phone',$data);

	}
}