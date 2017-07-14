<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class phone extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();

		
	}


	public function index()
	{

		$this->load->view('header');
		$this->load->view('header_search');
		//load menu data
		$listPriceLevel = "select * from price_level";
		$data['listPriceLevels'] = $this->model->get_list($listPriceLevel);
		$listBrand1 = "select * from brand limit 9";
		$data['listBrands1'] = $this->model->get_list($listBrand1);
		$listBrand2 = "select * from brand limit 10 ,50";
		$data['listBrands2'] = $this->model->get_list($listBrand2);
		$listScreenSize = "select * from screen_level";
		$data['listScreen'] = $this->model->get_list($listScreenSize );
		$listOS = "select * from operating_system";
		$data['listOS'] =  $this->model->get_list($listOS );
		//load data ajax
		$data['controller_data'] = "allPhone_data";
		$sqlCountPhone = "select * from product where promotion_percent = 0";
		$data['total'] = $this->model->get_phoneLoad_count($sqlCountPhone);
		
		//load to view 'phone'
		$this->load->view('phone', $data);
		$this->load->view('footer');

	}


	public function allPhone_data()
	{

		$page =  $_GET['page'];
      
        $get_vdata = $this->model->get_phoneLoad($page);
        foreach ($get_vdata as $row) {

        	$get_image = $this->model->get_logo_image($row->id)->row_array();
        	echo "<div class='col-md-2 product'><a href='".site_url('phone/phone_detail/'.$row->id)."'><div class='picture'><img class='img-responsive' src=".base_url("assets/upload_image/phone/".$get_image['img'])."></div><div class='name_product'>". $row->name."</div><div class='price_product'>".number_format($row->price, 0, '.', '.')."₫</div></a></div>";
        }

        exit;

	}

	public function price_level($id)
	{
		$this->load->view('header');
		$this->load->view('header_search');
		$id  = $this->uri->segment(3);
		//load menu data
		$listPriceLevel = "select * from price_level";
		$data['listPriceLevels'] = $this->model->get_list($listPriceLevel);
		$listBrand1 = "select * from brand limit 9";
		$data['listBrands1'] = $this->model->get_list($listBrand1);
		$listBrand2 = "select * from brand limit 10 ,50";
		$data['listBrands2'] = $this->model->get_list($listBrand2);
		$listScreenSize = "select * from screen_level";
		$data['listScreen'] = $this->model->get_list($listScreenSize );
		$listOS = "select * from operating_system";
		$data['listOS'] =  $this->model->get_list($listOS );
		
		//load data ajax
		
		$data['controller_data'] = "price_level_data/$id";
		$sqlCountPhone = "select * from product where product.price_level_id = $id and promotion_percent = 0";
		$data['total'] = $this->model->get_phoneLoad_count($sqlCountPhone);	
		
		$this->load->view('phone', $data);
		$this->load->view('footer');


	}
	public function price_level_data($id)
	{

		$page =  $_GET['page'];
        $get_vdata = $this->model->get_phoneLoad_priceLevel($page,$id);
        foreach ($get_vdata as $row) {
        	$get_image = $this->model->get_logo_image($row->id)->row_array();
        	echo "<div class='col-md-2 product'><a href='".site_url('phone/phone_detail/'.$row->id)."'><div class='picture'><img class='img-responsive' src=".base_url("assets/upload_image/phone/".$get_image['img'])."></div><div class='name_product'>". $row->name."</div><div class='price_product'>".number_format($row->price, 0, '.', '.')."₫</div></a></div>";
        }

        exit;

	}

	public function brand($id)
	{

		$this->load->view('header');
		$this->load->view('header_search');
		$id  = $this->uri->segment(3);
		//load menu data
		$listPriceLevel = "select * from price_level";
		$data['listPriceLevels'] = $this->model->get_list($listPriceLevel);
		$listBrand1 = "select * from brand limit 9";
		$data['listBrands1'] = $this->model->get_list($listBrand1);
		$listBrand2 = "select * from brand limit 10 ,50";
		$data['listBrands2'] = $this->model->get_list($listBrand2);
		$listScreenSize = "select * from screen_level";
		$data['listScreen'] = $this->model->get_list($listScreenSize );
		$listOS = "select * from operating_system";
		$data['listOS'] =  $this->model->get_list($listOS );
		//load data ajax
		
		$data['controller_data'] = "brand_data/$id";
		$sqlCountPhone = "select * from product where product.brands_id = $id and promotion_percent = 0";
		$data['total'] = $this->model->get_phoneLoad_count($sqlCountPhone);	
		
		$this->load->view('phone', $data);
		$this->load->view('footer');

	}
	public function brand_data($id)
	{

		$page =  $_GET['page'];
        $get_vdata = $this->model->get_phoneLoad_brandLevel($page,$id);
        foreach ($get_vdata as $row) {
        	$get_image = $this->model->get_logo_image($row->id)->row_array();
        	echo "<div class='col-md-2 product'><a href='".site_url('phone/phone_detail/'.$row->id)."'><div class='picture'><img class='img-responsive' src=".base_url("assets/upload_image/phone/".$get_image['img'])."></div><div class='name_product'>". $row->name."</div><div class='price_product'>".number_format($row->price, 0, '.', '.')."₫</div></a></div>";
        }

        exit;

	}

	
	public function advance_search() {

		$page =  $_GET['page'];
		$price_level_id = $_GET['price_level_id'];
		$brand_id = $_GET['brand_id'];
		$screen_level_id = $_GET['screen_level_id'];
		$operating_system_id = $_GET['operating_system_id'];
		if($page == "") {
			$result = $this->model->advance_search($price_level_id, $brand_id,$screen_level_id,$operating_system_id,$page);
			echo $result;
		}else{
			$result = $this->model->advance_search($price_level_id, $brand_id,$screen_level_id,$operating_system_id,$page);
			foreach ($result as $row) {
				$get_image = $this->model->get_main_image_phone($row->id)->row_array();
	       		echo "<div class='col-md-2 product'><a href='".site_url('phone/phone_detail/'.$row->id)."'><div class='picture'><img class='img-responsive' src=".base_url("assets/upload_image/phone/".$get_image['img'])."></div><div class='name_product'>". $row->name."</div><div class='price_product'>".number_format($row->price, 0, '.', '.')."₫</div></a></div>";
	        }
	    }
        exit;

	}


	public function phone_detail($id)
	{

		$this->load->view('header');
		$id = $this->uri->segment(3);
		$sql_name_brand = "select * from product,brand where product.brands_id = brand.id and product.id = $id";
		$data['name_brand'] =$this->model->get_infor_phoneDetail($sql_name_brand);
		$sql_phone = "select * from product where id = $id";
		$data['infor'] = $this->model->get_infor_phoneDetail($sql_phone) ;
		$data['other_phone'] = $this->model->get_infor_phoneDetail($sql_phone)->row_array();
		$brand_id = $data['other_phone']['brands_id'];
		$data['other_phone']= $this->model->get_other_phone($id, $brand_id);
		$data['other_phone_count']=$this->model->get_other_phone_count($id, $brand_id);
		$sql_technology_infor= "select * from technology_infor where product_id = $id and tech_infor_category_id = 2 limit 3";
		$data['danhgia_infor'] = $this->model->get_infor_phoneDetail($sql_technology_infor);
		$sql_allinfor_phone = "select * from technology_infor where product_id = $id order by id DESC limit 10 ";
		$data['all_infor_phone'] = $this->model->get_infor_phoneDetail($sql_allinfor_phone);
		$data['danhgia_infor_count'] = $this->model->get_infor_phoneDetail_count($sql_technology_infor);
		$sql_accessory ="select *,color.name as color_accessory, accessories_color.id as accessories_color_id from accessories_color, color,accessories  where accessories.id = accessories_color.accessories_id and
		accessories_color.color_id = color.id and product_id = $id";
		$data['accessories_phone'] = $this->model->get_infor_phoneDetail($sql_accessory);
		$data['accessories_phone_count'] = $this->model->get_infor_phoneDetail_count($sql_accessory);
		$sql_count_accessory_type =" select *, count(accessories_category.id) as totalAccessories from accessories, accessories_category
									where accessories.accessories_category_id = accessories_category.id and accessories.product_id = $id
									group by accessories_category.id ";
		$data['list_accessory_category'] = $this->model->get_infor_phoneDetail($sql_count_accessory_type);


		$data['image_main'] =  $this->model->get_main_image_phone($id)->result();
		$data['image_normal'] = $this->model->get_normal_image($id);
		$data['image_tech'] = $this->model->get_image_tech($id)->row_array();


		if($this->session->userdata('username') =='')
		{
			if (isset($_POST['submit']))
			{

				$arr1['fullname'] = $fullname = $this->input->post('fullname');
				$arr1['email'] = $email = $this->input->post('email');
				$arr1['type'] = 1;			
				$arr2['type_user'] = 0;
				$arr2['item_id'] = $item_id = $this->input->post('id_product');
				$arr2['type_item'] =  1;
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
			$arr['type_item'] =  1;
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

		$config['base_url'] = "http://localhost/bksmartphone/index.php/phone/phone_detail/$id";
		$config['total_rows'] = $this->model->get_comment_count("select * from comment where  item_id = $id and type_item = 1 ");
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
		$sql_user_comment = "select * from comment join users on comment.user_id = users.id and type_user = 1 and item_id = '$id' and type_item = 1 order by comment.id DESC limit $start,3";
		$sql_user_comments = "select * from comment  join user_order_notregister on comment.user_id = user_order_notregister.id and type_user = 0 and item_id = '$id' and type_item = 1 order by comment.id DESC limit $start,3";
		$data['register_comments'] = $this->model->get_comment($sql_user_comment);
		$data['not_register_comments'] = $this->model->get_comment($sql_user_comments);
		$data['pagination'] = $this->pagination->create_links();

	
		
		$this->load->view('phone_detail',$data);
		$this->load->view('footer');
	}

	public function order($id)
	{	

		$data['list_accessory'] = isset($_GET["list_accessory"]) == "" ? [] : explode(",", $_GET["list_accessory"]);	
		$data['success']="";
		$data['error'] = "";
		$id_product = $this->uri->segment(3);
		$sql_infor_phone = "select * from product where id = $id_product" ;
		$data['infor'] = $this->model->get_infor_phoneDetail($sql_infor_phone);
		$sql_color_phone = "select * from product , product_color, color where product.id = product_color.product_id and color.id = product_color.color_id and product.id = $id_product";
		$data['color'] = $this->model->color_phone($sql_color_phone);
		$data['image_main'] =  $this->model->get_main_image_phone($id)->result();
		$data['image_normal'] = $this->model->get_normal_image($id);

		$id_receipt = "select max(id) from orders";
		$data['id_receipt'] = $this->model->get_infor_phoneDetail($id_receipt)->row_array();

		if($this->session->userdata('username') =='') {
		if (isset($_POST['submit']))
		{
		
			$arr1['gender'] = $username= $this->input->post('gender');
			$arr2['product_id'] = $this->input->post('id_product');
			$arr2['id_receipt'] = $this->input->post('id_receipt');
			$arr1['fullname'] = $fullname = $this->input->post('fullname');
			$arr1['phone_number'] = $phone_number= $this->input->post('phone_number');;
			$arr1['email'] = $email= $this->input->post('email');
			$arr1['address']=$address=$this->input->post('address');
			$arr2['type_user'] = 0;
			$arr1['type'] = 0;
			$color_order = $this->input->post('color');
			$date_order = date('Y-m-d');
			$arr2['time_order'] = $date_order;
			$this->form_validation->set_rules('fullname','Fullname','required');
		   	$this->form_validation->set_rules('phone_number','PhoneNumber','required');
		   	$this->form_validation->set_rules('email','Email','required');
		   	$this->form_validation->set_rules('address', 'Address', 'required');
		   	$this->form_validation->set_rules('color','Color','required');

		   	if($this->form_validation->run()== TRUE)
			{	

				$product_color_sql = "select id from product_color where product_id = $id_product and color_id= $color_order";
				$product_color = $this->model->select_product_color($product_color_sql);
				$product_color_id = $product_color['id'];
				$arr2['product_id'] = $product_color_id;

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
				if($data['list_accessory'] != [])
				{
					foreach ($data['list_accessory'] as $row) 
					{
						////	$arr2['id_receipt'] = ;
							$arr2['accessories_color_id'] =  $row;
							$this->model->add_customer('orders',$arr2);
					}
				}
				else
				{
					//	$arr2['id_receipt'] = ;
						$this->model->add_customer('orders',$arr2);

				}
			if($data['list_accessory'] != [])
			{
			header("location:".site_url('phone/infor_order_user/'.$id_product.'?user_id='.$id_user.'&color_order='.$color_order.'&time_order='.$date_order.'&list_accessory='.$_GET["list_accessory"]));
			}
			else
			{
				header("location:".site_url('phone/infor_order_user/'.$id_product.'?user_id='.$id_user.'&color_order='.$color_order.'&time_order='.$date_order));

			}
			}
		}
		$this->load->view('order',$data);
	}
	else
	{

		$data['gender'] =  $this->session->userdata('gender');
		$data['fullname'] =  $this->session->userdata('fullname');
		$data['phone_number'] =  $this->session->userdata('phone_number');
		$data['email'] =  $this->session->userdata('email');
		$data['address']=$this->session->userdata('address');

		if (isset($_POST['submit']))
		{
			
			$arr2['product_id'] = $this->input->post('id_product');
			$arr2['id_receipt'] = $this->input->post('id_receipt');
			$arr2['person_order_id'] = $id_user = $this->session->userdata('id');
			$arr2['type_user'] = 1;
			$color = $color_order= $this->input->post('color');
	
			$date_order = date('Y-m-d ');
			$arr2['time_order'] = $date_order;

			$this->form_validation->set_rules('color','Color','required');

			if($this->form_validation->run()== TRUE)
			{

				$product_color_sql = "select id from product_color where product_id = $id_product and color_id= $color";
				$product_color = $this->model->select_product_color($product_color_sql);
				$product_color_id = $product_color['id'];
				$arr2['product_id'] = $product_color_id;

				if($data['list_accessory'] != [])
				{
					foreach ($data['list_accessory'] as $row) 
					{

							$arr2['accessories_color_id'] =  $row;
							$this->model->add_customer('orders',$arr2);
					}
				}
				else
				{
							$this->model->add_customer('orders',$arr2);
				}
				if($data['list_accessory'] != [])
				{

						header("location:".site_url('phone/infor_order_user/'.$id_product.'?user_id='.$id_user.'&color_order='.$color_order.'&time_order='.$date_order.'&list_accessory='.$_GET["list_accessory"]));
				}
				else

				{

					header("location:".site_url('phone/infor_order_user/'.$id_product.'?user_id='.$id_user.'&color_order='.$color_order.'&time_order='.$date_order));
				}
				
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
		$data['list_accessory'] = isset($_GET["list_accessory"]) == "" ? [] : explode(",", $_GET["list_accessory"]);
		$time_order =  $_GET['time_order'];
		$data['time_delay'] = date("d.m.Y",strtotime($time_order."+1 day"));
		$sql_color_order = "select * from color where id = $color_order " ;
		$data['color_order'] = $this->model->color_phone($sql_color_order)  ;
		$sql_infor_phone = "select * from product where id = $id" ;
		$data['infor'] = $this->model->get_infor_phoneDetail($sql_infor_phone);

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
