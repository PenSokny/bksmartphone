<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class promotion extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		$this->load->view('header');
		$this->load->view('header_search');
				
	}
	public function index()
	{

		
		$sql_phone_1 = "select * from brand limit 9";
		$data['list_phone1'] = $this->model->get_list_promotion($sql_phone_1);
		$sql_phone_2 = "select * from brand limit 10, 100";
		$data['list_phone2'] = $this->model->get_list_promotion($sql_phone_2);
		$sql_accessory_category = "select * from accessories_category";
		$data['list_accessories_category'] = $this->model->get_list_promotion($sql_accessory_category);
		$sql_accessory_promotion = "select * from accessories where promotion_percent > 0 ";
		$data['data_accessories'] = $this->model->get_list_promotion($sql_accessory_promotion);
		$sql_phone_promotion  ="select * from product where promotion_percent > 0";
		$data['data_phones'] =  $this->model->get_list_promotion($sql_phone_promotion);


		$data['controller_data_phone'] = "load_more_phone";
		$sqlCountPhone_phone = "select * from product where promotion_percent > 0";
		$data['total_phone'] = $this->model->get_phoneLoad_count($sqlCountPhone_phone);

		$data['controller_data_accessory'] = "load_more_accessory";
		$sqlCountPhone_accessory = "select * from accessories where promotion_percent > 0";
		$data['total_accessory'] = $this->model->get_phoneLoad_count($sqlCountPhone_accessory);

		$this->load->view('promotion_view',$data);
	

	}



	public function load_more_phone()
	{

		$page =  $_GET['page'];
      
        $get_vdata = $this->model->get_phone_promotion_Load($page);
        foreach ($get_vdata as $row) {
        	$get_image = $this->model->get_logo_image($row->id)->row_array();
        	echo "<div class='col-md-2 product link_product'><a href='".site_url('phone/phone_detail/'.$row->id)."'><div class='picture'><img class='img-responsive' src=".base_url("assets/upload_image/phone/".$get_image['img'])." width='177px'/></div><div class='name_product'>". $row->name."</div><div class='price_product' style='text-decoration: line-through;'>".number_format($row->price, 0, '.', '.')."₫</div><div class='price_product'>".number_format(($row->price - ($row->price * $row->promotion_percent/100)),0,'.','.')."₫</div></a></div>";
        }

        exit;
	}
	public function load_more_accessory()
	{

		$page =  $_GET['page'];
      
        $get_vdata = $this->model->get_accessory_promotion_Load($page);
        foreach ($get_vdata as $row) {
        	$get_images = $this->model->get_logoaccessory_image($row->id)->row_array();
        	echo "<div class='col-md-3 product_accessory link_product'><a href='".site_url('accessory/accessory_detail/'.$row->id)."'><div class='picture'><img class='img-responsive' src=".base_url("assets/upload_image/accessories/".$get_images['img'])." width='177px'></div><div class='name_product'>". $row->name."</div><div class='price_product' style='text-decoration: line-through;'>".number_format($row->price, 0, '.', '.')."₫</div><div class='price_product'>".number_format(($row->price - ($row->price * $row->promotion_percent/100)),0,'.','.')."₫</div></a></div>";
        }

        exit;
	}




	public function Search_phone_promotion()
	{

		$page =  $_GET['page'];
		$brand_id = $_GET['brand_id'];
		if($page == "")
		{

			$result = $this->model->get_phone_promotion($brand_id,$page);
			echo $result; 
		}
		else
		{
			$result = $this->model->get_phone_promotion($brand_id,$page);
			foreach ($result as $row) 
			{
       			echo "<div class='col-md-3 product_accessory link_product'><a href='".site_url('')."'><div class='picture'><img class='img-responsive' src=".base_url("assets/image/iphone.jpg")."></div><div class='name_product'>". $row->name."</div><div class='price_product' style='text-decoration: line-through;'>".number_format($row->price, 0, '.', '.')."₫</div><div class='price_product'>".number_format(($row->price - ($row->price * $row->promotion_percent/100)),0,'.','.')."₫</div></a></div>";
        	}
		}
		exit;



	}

	public function Search_accessory_promotion()
	{
		$page =  $_GET['page'];
		$accessory_category_id = $_GET['accessory_category_id'];
		if($page == "")
		{

			$result = $this->model->get_accessory_promotion($accessory_category_id,$page);
			echo $result; 
		}
		else
		{
			$result = $this->model->get_accessory_promotion($accessory_category_id,$page);
			foreach ($result as $row) 
			{
       			echo "<div class='col-md-3 product_accessory link_product'><a href='".site_url('')."'><div class='picture'><img class='img-responsive' src=".base_url("assets/image/iphone.jpg")."></div><div class='name_product'>". $row->name."</div><div class='price_product' style='text-decoration: line-through;'>".number_format($row->price, 0, '.', '.')."₫</div><div class='price_product'>".number_format(($row->price - ($row->price * $row->promotion_percent/100)),0,'.','.')."₫</div></a></div>";
        	}
		}
		exit;



	}


}
