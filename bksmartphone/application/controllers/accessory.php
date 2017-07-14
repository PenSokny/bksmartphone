<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class accessory extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		

	}


	public function index()
	{
		$this->load->view('header');
		$sql_listAccessoryCategory = "select * from accessories_category";
		$data['list_accessory_categories'] = $this->model->get_categoryAccessory_list($sql_listAccessoryCategory);	
		$this->load->view('accessory_view',$data);
		$this->load->view('footer');

	}
	public function loadAccessory()
	{
		$this->load->view('header');
		$page =  $_GET['page'];
		$accessory_category_id = $_GET['accessory_category_id'];

		
	//	$sqlCountAccessory = "select count from accessories where id LIKE '%$accessory_category_id'";
	//	$data['total'] = $this->model->get_accessory_count($sqlCountAccessory);	
	//  $this->load->view('accessory_view', $data);

		if($page == "")
		{

			$result = $this->model->getAccessory_list($accessory_category_id,$page);
			echo $result; 
		}
		else
		{
			$result = $this->model->getAccessory_list($accessory_category_id,$page);
			foreach ($result as $row) 
			{   $get_image = $this->model->get_logoaccessory_image($row->id)->row_array();
       			echo "<div class='col-md-3 product_accessory link_product'><a href='".site_url('accessory/accessory_detail/'.$row->id)."'><div class='picture'><img class='img-responsive' src=".base_url("assets/upload_image/accessories/".$get_image['img'])."></div ><div class='name_product'>". $row->name."</div><div class='price_product'>".number_format($row->price, 0, '.', '.')."₫</div></a></div>";
        	}
		}
		exit;
	}

	public function featured_accessory()
	{

		$this->load->view('header');
		$phone_id =  $_GET['phone_id'];
		$accessory_category_id = $_GET['accessory_category_id'];		
		$data = $this->model->get_feature_accessory($phone_id,$accessory_category_id);	
		$array_val = array();
		foreach ($data as $val) {
			if($val->promotion_percent > 0)
			{
				$array_val[] = $val->id;		
			}
		}
		$result['id_promote']  = $array_val;	
		$result['id_phone'] = $phone_id;
		$result['accessory_category_id'] = $accessory_category_id ;
		$sql_listAccessoryCategory = "select * from accessories_category";
		$result['list_accessory_categories'] = $this->model->get_categoryAccessory_list($sql_listAccessoryCategory);	
		$result['list_category_accessory_phone'] = $this->model->get_all_feature_accessory($phone_id);
		$result['list_accessory_phone'] = $this->model->get_feature_accessory($phone_id,$accessory_category_id);
		
		$this->load->view('accessory_view',$result);
		$this->load->view('footer');
		


	}
	public function autocomplete()
	{

		$search_data = $this->input->post('search_data');
        $query = $this->model->get_autocomplete($search_data);

        foreach ($query->result() as $row):
            echo "<li><a href='" . base_url() . "index.php/accessory/search_accessory_phone?phone_id=".$row->id."&accessory_category_id='>".$row->name."</a></li>";
        endforeach;


	}

	public function search_accessory_phone()
	{


		$this->load->view('header');
		$phone_id =  $_GET['phone_id'];
		$accessory_category_id = $_GET['accessory_category_id'];
		
		$sql_listAccessoryCategory = "select * from accessories_category";
		$data['list_accessory_categories'] = $this->model->get_categoryAccessory_list($sql_listAccessoryCategory);
		$data['id_phones'] = $phone_id;
		$data['list_category_accessory_phones'] = $this->model->get_all_feature_accessory($phone_id);
		// print_r($data['list_category_accessory_phones']) ;
		// die;
		$data['list_accessory_phones'] = $this->model->get_feature_accessory($phone_id,$accessory_category_id);
		$this->load->view('accessory_view',$data);
		$this->load->view('footer');

	}

	public function accessory_detail($id)
	{


		$this->load->view('header');
		$id = $this->uri->segment(3);
		$sql_name_brand = "select * from accessories,accessories_category where accessories.accessories_category_id = accessories_category.id and accessories.id = $id ";
		$data['name_accessory_category'] =$this->model->get_infor_accessoryDetail($sql_name_brand);
		$sql_name_accessory = "select * from accessories where id = $id";
		$data['accessory'] = $this->model->get_infor_accessoryDetail($sql_name_accessory);
		$sql_otheraccessory = "select * from accessories where id != $id  order by  rand() limit 5";
		$data['other_accessory'] = $this->model->get_infor_accessoryDetail($sql_otheraccessory);
		$sql_accessory = "select * from accessories where id = $id";
		$data['infor'] = $this->model->get_infor_accessoryDetail($sql_accessory) ;

		$data['image_accessory_normal'] = $this->model->get_normalaccessory_image($id);

		if($this->session->userdata('username') =='')
		{
			if (isset($_POST['submit']))
			{

				$arr1['fullname'] = $fullname = $this->input->post('fullname');
				$arr1['email'] = $email = $this->input->post('email');
				$arr1['type'] = 1;			
				$arr2['type_user'] = 0;
				$arr2['item_id'] = $item_id = $this->input->post('id_product');
				$arr2['type_item'] =  2;
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
			$arr['type_item'] =  2;
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

		$config['base_url'] = "http://localhost/bksmartphone/index.php/accessory/accessory_detail/$id";
		$config['total_rows'] = $this->model->get_comment_count("select * from comment where item_id = $id and type_item = 2");
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
		$sql_user_comment = "select * from comment join users on comment.user_id = users.id and type_user = 1 and item_id = '$id' and type_item = 2 order by comment.id DESC limit $start,3";
		$sql_user_comments = "select * from comment  join user_order_notregister on comment.user_id = user_order_notregister.id and type_user = 0 and item_id = '$id' and type_item = 2 order by comment.id DESC limit $start,3";
		$data['register_comments'] = $this->model->get_comment($sql_user_comment);
		$data['not_register_comments'] = $this->model->get_comment($sql_user_comments);
		$data['pagination'] = $this->pagination->create_links();


		$this->load->view('accessory_detail',$data);
		$this->load->view('footer');
	}

	public function order($id)
	{

		$id_accessory = $this->uri->segment(3);
		$sql_accessory_infor = "select * from accessories where id = $id_accessory";
		$data['infor']= $this->model->get_infor_accessoryDetail($sql_accessory_infor);
		$sql_color_phone = "select * from accessories , accessories_color, color where accessories.id = accessories_color.accessories_id and color.id = accessories_color.color_id and accessories.id = $id_accessory";
		$data['color'] = $this->model->color_phone($sql_color_phone);
		$id_receipt = "select max(id) from orders";
		$data['id_receipt'] = $this->model->get_infor_phoneDetail($id_receipt)->row_array();
		$data['imageaccessory_logo'] =  $this->model->get_logoaccessory_image($id)->result();
		if($this->session->userdata('username') =='')
		{
			if (isset($_POST['submit']))
			{

				$arr1['gender'] = $username= $this->input->post('gender');
				$arr2['accessory_id']  = $this->input->post('id_product');//
				$arr2['id_receipt'] = $this->input->post('id_receipt');
				$arr1['fullname'] = $fullname = $this->input->post('fullname');
				$arr1['phone_number'] = $phone_number= $this->input->post('phone_number');;
				$arr1['email'] = $email= $this->input->post('email');
				$arr2['type_user'] = 0;
				$arr1['type'] = 0;
				$color_order =$arr2['color_item'] = $this->input->post('color');
				$date_order = date('Y-m-d');
				$arr2['time_order'] = $date_order;
				$this->form_validation->set_rules('fullname','Fullname','required');
				$this->form_validation->set_rules('phone_number','PhoneNumber','required');
				$this->form_validation->set_rules('email','Email','required');
				$this->form_validation->set_rules('color','Color','required');

				if($this->form_validation->run()== TRUE)
				{
					$num = $this->model->get_num_users("select * from user_order_notregister where fullname='$fullname' and phone_number = '$phone_number' and email = '$email'");

				if($num <= 0)
				{
					$id_buyer = $this->model->add_customer('user_order_notregister',$arr1);
					$id_user  = $arr2['person_order_id'] = $id_buyer;

				}
				else
				{
					$sql_id  = "select * from user_order_notregister where fullname='$fullname' and phone_number = '$phone_number' and email = '$email'";
					$data_id['id'] = $this->model->get_user($sql_id);
					$id_user = $data_id['id'];
					$id_user  = $arr2['person_order_id'] = $id_user['id'] ;

				}
				$this->model->add_customer('orders',$arr2);
				header("location:".site_url('accessory/infor_order_user/'.$id_accessory.'?user_id='.$id_user.'&color_order='.$color_order.'&time_order='.$date_order));

				}

			}
			$this->load->view('order',$data);


		}else
		{

		$data['gender'] =  $this->session->userdata('gender');
		$data['fullname'] =  $this->session->userdata('fullname');
		$data['phone_number'] =  $this->session->userdata('phone_number');
		$data['email'] =  $this->session->userdata('email');

			if (isset($_POST['submit']))
			{

			$arr2['accessory_id'] = $this->input->post('id_product');
			$arr2['person_order_id'] = $id_user = $this->session->userdata('id');
			$arr2['id_receipt'] = $this->input->post('id_receipt');
			$arr2['type_user'] = 1;
			$arr2['color_item'] = $color_order= $this->input->post('color');
			$date_order = date('Y-m-d ');
			$arr2['time_order'] = $date_order;

			$this->form_validation->set_rules('color','Color','required');

				if($this->form_validation->run()== TRUE)
				{


						$this->model->add_customer('orders',$arr2);
						header("location:".site_url('accessory/infor_order_user/'.$id_accessory.'?user_id='.$id_user.'&color_order='.$color_order.'&time_order='.$date_order));
						
				}

			}
			
			$this->load->view('order',$data);

		}
	}

	public function infor_order_user($id)
	{


		$id = $this->uri->segment(3);
		$user_id =  $_GET['user_id'];
		$color_order =  $_GET['color_order'];
		$time_order =  $_GET['time_order'];
		$data['time_delay'] = date("d.m.Y",strtotime($time_order."+1 day"));

		$sql_color_order = "select * from color where id = $color_order " ;
		$data['color_order'] = $this->model->color_phone($sql_color_order)  ;
		$sql_infor_accessory = "select * from accessories where id = $id" ;
		$data['infor'] = $this->model->get_infor_accessoryDetail($sql_infor_accessory);
		if($this->session->userdata('username') =='')
		{
			$sql_infor_buyer = "select * from  user_order_notregister where id = $user_id ";
			$data['user_order_infor'] = $this->model->get_user($sql_infor_buyer);
		}
		else
		{
			$sql_infor_buyer = "select * from users where id= $user_id";
			$data['user_order_infor'] = $this->model->get_user($sql_infor_buyer);
		}
		$this->load->view('order_success',$data);





	}






}
