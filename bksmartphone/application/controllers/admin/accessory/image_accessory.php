<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class image_accessory extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/accessory_category/listMenu_accessory');
     

	}


	public function index()
	{

		$data['image_accessory'] = $this->model->get_image_accessory();
		$data['path'] = 'accessories/';
       	$this->load->view('admin/image_accessory/view_image_accessory',$data);
       	$this->load->view('admin/footer');

	}
	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$image = $this->model->get_image_accessory_by_id($id)->img;
		unlink('assets/upload_image/accessories/'.$image);
		$this->model->delete(array('id'=>$id),'image_accessories');
		header("location:".site_url('admin/accessory/image_accessory/index'));


	}
	public function insert()
	{
		$data['error'] ='';
		$data['accessory_id'] = $this->model->get_accessory_id();
		
		if(isset($_POST['submit']))
		{


			
		    $image = $this->do_upload();
		   	$this->form_validation->set_rules('name','Name','required');
			$this->form_validation->set_rules('type_image','Type Image','required');
			$this->form_validation->set_rules('id_accessory','id_accessory','required');

			$arr['name'] = $this->input->post('name');
			$arr['type_image'] = $this->input->post('type_image');
			$arr['accessory_id'] = $this->input->post('id_accessory');
			if($this->form_validation->run()== TRUE )
			{
				   	if(isset($image['error'])){
						$this->session->set_flashdata('error_image', $image['error']);
						redirect("admin/accessory/image_accessory/insert");
					}
					else
					{
						$arr['img'] =  $image;
						$this->model->add_image_accessory('image_accessories',$arr);
						header("location:".site_url('admin/accessory/image_accessory/index'));

					}
					
			}
					
		
		}



			$this->load->view('admin/image_accessory/insert_image_accessory',$data);
		 	
		}
			

	
	public function do_upload(){
		$config['upload_path'] = 'assets/upload_image/accessories';
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
		$data['accessory_id'] = $this->model->get_accessory_id();
		$data['image_accessory_select'] = $this->model->get_image_accessory_by_id($id);	
		$image = $this->model->get_image_accessory_by_id($id)->img;

		if(isset($_POST['submit']))
		{
			
			if(!empty($_FILES['image']['name']))
			{

				unlink('assets/upload_image/accessories/'.$image);
			 	$arr['img'] = $this->do_upload();

			 	$this->model->update_image_accessory($arr, $id);
				header("location:".site_url('admin/accessory/image_accessory/index'));
			}
			else
			{
				
				$arr['name'] = $this->input->post('name');
			 	$arr['type_image'] = $this->input->post('type_image');
			 	$arr['accessory_id'] = $this->input->post('id_accessory');

			 	$this->model->update_image_accessory($arr, $id);
				header("location:".site_url('admin/accessory/image_accessory/index'));
			}

			// $arr['name'] = $this->input->post('name');
			// $arr['type_image'] = $this->input->post('type_image');
			// $arr['accessory_id'] = $this->input->post('id_accessory');

			// if(isset($_FILES['image']['name']))
			// {
			// 	unlink('assets/upload_image/accessories/'.$image);
			// 	$arr['img'] = $this->do_upload();
			// }
			
			// $this->model->update_image_accessory($arr, $id);
			// header("location:".site_url('admin/accessory/image_accessory/index'));
		 	
		}
		$this->load->view('admin/image_accessory/update_image_accessory',$data);

	}
}