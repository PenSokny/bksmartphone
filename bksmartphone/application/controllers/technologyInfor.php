<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class technologyInfor extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		$this->load->view('header');

	}


	public function index($page=1)
	{
		
		
		
		$config['base_url'] = "http://localhost/bksmartphone/index.php/technologyInfor/index";
		$config['total_rows'] = $this->model->get_technology_infor_count("select * from technology_infor");
		$config['per_page'] = 4;
		$config['uri_segment'] = 3;
		$config['num_links'] = 3;
		$config['use_page_numbers'] = TRUE;
		$config['first_link'] = 'First';
		$config['last_link'] = 'Last';

		$config['full_tag_open'] = '<ul class="pagination">';
        $config['full_tag_close'] = '</ul>';
        $config['first_link'] = false;
        $config['last_link'] = false;
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';
        $config['prev_link'] = '&laquo';
        $config['prev_tag_open'] = '<li class="prev">';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = '&raquo';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="active"><a href="#">';
        $config['cur_tag_close'] = '</a></li>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
		
		$this->pagination->initialize($config);
		$start = ($page-1)*4;
		$sql_allinfor = "select * from technology_infor order by id DESC limit $start,4";
		$vdata['technology_infor'] = $this->model->get_technology_infor($sql_allinfor);
		$vdata['pagination'] = $this->pagination->create_links();
		$data =  array(
			'contentInfor' => $this->load->view('technologyInfor_content', $vdata,true) 
		);
		$sqlListCate = "select * from technology_infor_category";		
		$data['listCategory'] = $this->model->get_listCategoryTechnoInfor($sqlListCate);
		$this->load->view('technologyInfor_view', $data);
		$this->load->view('footer');

	}
	public function get_infor_categoryId($page = 1)
	{
		
		// $id =  $_GET['id'];
		$segment = $this->uri->segment(4);
		$page = $segment == "" ? 1 : $segment;
		$id = $this->uri->segment(3);
		$config['base_url'] = "http://localhost/bksmartphone/index.php/technologyInfor/get_infor_categoryId/$id";
		$config['total_rows'] = $this->model->get_technology_infor_count("select * from technology_infor where tech_infor_category_id = $id");
		$config['per_page'] = 4;
		$config['uri_segment'] = 4;
		$config['num_links'] = 3;
		$config['use_page_numbers'] = TRUE;
		$config['first_link'] = 'First';
		$config['last_link'] = 'Last';

		$config['full_tag_open'] = '<ul class="pagination">';
        $config['full_tag_close'] = '</ul>';
        $config['first_link'] = false;
        $config['last_link'] = false;
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';
        $config['prev_link'] = '&laquo';
        $config['prev_tag_open'] = '<li class="prev">';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = '&raquo';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="active"><a href="#">';
        $config['cur_tag_close'] = '</a></li>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';

		
		$this->pagination->initialize($config);
		$start = ($page-1)*4;
		$sql = "select * from technology_infor where tech_infor_category_id = $id limit $start,4";
		$vdata['technology_infor'] = $this->model->get_technology_infor($sql);
		$vdata['pagination'] = $this->pagination->create_links();
		$data =  array(
			'contentInfor' => $this->load->view('technologyInfor_content', $vdata,true) 
		);
		$sqlListCate = "select * from technology_infor_category";		
		$data['listCategory'] = $this->model->get_listCategoryTechnoInfor($sqlListCate);
		$this->load->view('technologyInfor_view', $data);
		$this->load->view('footer');
	




	}

	public function technology_detail($id)
	{




		$id_infor = $this->uri->segment(3);
		$sql_techinfor= "select * from technology_infor where id = $id_infor";
		$data['techinfor']  = $this->model->get_technology_infor($sql_techinfor) ; 
		$sqlListCate = "select * from technology_infor_category";		
		$data['listCategory'] = $this->model->get_listCategoryTechnoInfor($sqlListCate);
		$sql_other_techInfor = "select * from technology_infor where id != $id_infor order by  rand() limit 5 ";
		$data['other_techinfor'] = $this->model->get_technology_infor($sql_other_techInfor);
		$sql_phone = "select * from technology_infor where id = $id_infor";
		$data['infor'] = $this->model->get_infor_phoneDetail($sql_phone) ;
		$data['tech_image'] = $this->model->get_image_techInfor($id)->row_array() ; 

		

		if($this->session->userdata('username') =='')
		{
			if (isset($_POST['submit']))
			{
				$arr1['fullname'] = $fullname = $this->input->post('fullname');
				$arr1['email'] = $email = $this->input->post('email');			
				$arr2['type_user'] = 0;
				$arr2['item_id'] = $item_id = $this->input->post('id_product');
				$arr2['type_item'] =  3;
				$arr2['comments'] = $comment=  $this->input->post('comment');

				$this->form_validation->set_rules('fullname','Fullname','required');
		   		$this->form_validation->set_rules('email','Email','required');
		   		$this->form_validation->set_rules('comment','Comment','required');

		   		if($this->form_validation->run()== TRUE)
				{
				
					$sql_kiemtra_user_notRegister = "select * from user_order_notregister where fullname = '$fullname'  and email = '$email'";
					$num = $this->model->get_num_users($sql_kiemtra_user_notRegister);
					$id_user = $this->model->get_user($sql_kiemtra_user_notRegister);
					if($num <= 0)
					{
						$id_buyer = $this->model->add_customer('user_order_notregister',$arr1);
							$arr2['user_id']  = $id_buyer ;
							$this->model->add_comment('comment',$arr2);	
					}
					else

					{
							$arr2['user_id'] = $id_user['id'] ;
							$this->model->add_comment('comment',$arr2);

					}
							
				}

			}
		}
		else
		{
			if (isset($_POST['submit']))
			{
			$arr['user_id'] = $userid = $this->session->userdata('id');
			$arr['type_user'] = 1;
			$arr['item_id'] = $item_id = $this->input->post('id_product');
			$arr['type_item'] =  3;
			$arr['comments'] = $comment=  $this->input->post('comment');
			$this->form_validation->set_rules('comment','Comment', 'required|min_length[5]|max_length[200]');
			if($this->form_validation->run()== TRUE)
				{
				
					$this->model->add_comment('comment',$arr);			
				}		
			}		
		}
		$segment = $this->uri->segment(4);
		$page = $segment == "" ? 1 : $segment;

		$config['base_url'] = "http://localhost/bksmartphone/index.php/technologyInfor/technology_detail/$id_infor";
		$config['total_rows'] = $this->model->get_comment_count("select * from comment where item_id = $id_infor and type_item = 3");
		$config['per_page'] = 3;
		$config['uri_segment'] = 4;
		$config['num_links'] = 1;
		$config['use_page_numbers'] = TRUE;
		$config['first_link'] = 'First';
		$config['last_link'] = 'Last';

		$config['full_tag_open'] = '<ul class="pagination">';
        $config['full_tag_close'] = '</ul>';
        $config['first_link'] = false;
        $config['last_link'] = false;
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';
        $config['prev_link'] = '&laquo';
        $config['prev_tag_open'] = '<li class="prev">';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = '&raquo';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="active"><a href="#">';
        $config['cur_tag_close'] = '</a></li>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';

        $this->pagination->initialize($config);
		$start = ($page-1)*3;
		$sql_user_comment = "select * from comment join users on comment.user_id = users.id and type_user = 1 and item_id = '$id' and type_item = 3 order by comment.id DESC limit $start,3";
		$sql_user_comments = "select * from comment  join user_order_notregister on comment.user_id = user_order_notregister.id and type_user = 0 and item_id = '$id' and type_item = 3 order by comment.id DESC limit $start,3";
		$data['register_comments'] = $this->model->get_comment($sql_user_comment);
		$data['not_register_comments'] = $this->model->get_comment($sql_user_comments);
		$data['pagination'] = $this->pagination->create_links();



		$this->load->view('technologyInfor_detail',$data);
		$this->load->view('footer');


	}
	


}
