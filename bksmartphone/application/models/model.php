<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class model extends CI_Model {



	public function __construct(){

		parent::__construct();

	}

	// start home and phone model
	public function get_phone($sql){

		return $this->db->query($sql)->result();

	}
	public function get_phoneLoad($page)
	{

		$offset = 12 * $page;
		$limit = 12;
		$sql = "select * from product where promotion_percent = 0 limit $offset , $limit ";

		// $this->db->order_by('id', 'DESC');
		return $this->db->query($sql)->result();

	}
	public function get_phone_promotion_Load($page)
	{

		$offset = 6 * $page;
		$limit = 6;
		$sql = "select * from product where promotion_percent > 0 limit $offset , $limit ";
		return $this->db->query($sql)->result();

	}
	public function get_accessory_promotion_Load($page)
	{

		$offset = 4 * $page;
		$limit = 4;
		$sql = "select * from accessories where promotion_percent > 0 limit $offset , $limit ";
		return $this->db->query($sql)->result();

	}
	public function get_phoneLoad_priceLevel($page,$id)
	{

		$offset = 12 * $page;
		$limit = 12;
		$sql = "select * from product where price_level_id = $id  and promotion_percent = 0 limit $offset , $limit ";
		return $this->db->query($sql)->result();

	}
	public function get_phoneLoad_brandLevel($page,$id)
	{

		$offset = 12 * $page;
		$limit = 12;
		$sql = "select * from product where brands_id = $id and promotion_percent = 0 limit $offset , $limit ";
		return $this->db->query($sql)->result();

	}
	
	public function get_phoneLoad_count($sql)
	{

		return $this->db->query($sql)->num_rows();

	}
	public function get_list($sql)
	{
		return $this->db->query($sql)->result();

	}

	public function advance_search($price_level_id, $brand_id, $screen_level_id, $operating_system_id, $page)
	{
		if($page == "") {
			$sql = "select * from price_level, brand ,screen_level, operating_system, product where 
				product.price_level_id = price_level.id 
				and product.brands_id = brand.id
				and product.screen_level_id = screen_level.id
				and product.operating_system_id = operating_system.id
				and product.promotion_percent = 0
				and price_level.id LIKE '%$price_level_id%'
				and brand.id LIKE '%$brand_id%'
				and screen_level.id LIKE '%$screen_level_id'
				and operating_system.id LIKE '%$operating_system_id'
				";
			return $this->db->query($sql)->num_rows();
		}else {
			$offset = 12 * $page;
			$limit = 12;
			
			$sql = "select * from price_level, brand ,screen_level, operating_system, product where 
				product.price_level_id = price_level.id 
				and product.brands_id = brand.id
				and product.screen_level_id = screen_level.id
				and product.operating_system_id = operating_system.id
				and product.promotion_percent = 0
				and price_level.id LIKE '%$price_level_id%'
				and brand.id LIKE '%$brand_id%'
				and screen_level.id LIKE '%$screen_level_id'
				and operating_system.id LIKE '%$operating_system_id'
				limit $offset , $limit
				";
			return $this->db->query($sql)->result();
		}
		

	}




	// end hom and phone model
	// start Phụ Kiện model

	public function get_categoryAccessory_list($sql)
	{
		return $this->db->query($sql)->result();

	}
	public function get_accessory_count($sql)
	{
		return $this->db->query($sql)->num_rows();
	}

	public function getAccessory_list($accessory_category_id,$page)
	{

		if($page == "")
		{
			$sql = "select * from accessories where accessories_category_id LIKE '%$accessory_category_id%' and promotion_percent = 0";
			return $this->db->query($sql)->num_rows();

		}
		else
		{
			$offset = 8 * $page ;
			$limit = 8;
			$sql = "select * from accessories where   promotion_percent = 0 and  accessories_category_id LIKE '%$accessory_category_id%' limit $offset , $limit ";
			return $this->db->query($sql)->result();
		}
		}

	public function get_feature_accessory($product_id,$accessory_category_id)
	{
		$sql = "select * from accessories where product_id =$product_id and  accessories_category_id LIKE '%$accessory_category_id'  ";
		return $this->db->query($sql)->result();
	}
	public function get_all_feature_accessory($product_id)
	{
		$sql = "select *, count(accessories_category.id) as totalAccessories from accessories, accessories_category
									where accessories.accessories_category_id = accessories_category.id and accessories.product_id = $product_id
									group by accessories_category.id ";
		return $this->db->query($sql)->result();
	}





	



	// end Phụ Kiện model
	//start technology_Infor_model

	public function get_listCategoryTechnoInfor($sql)
	{
		
		return $this->db->query($sql)->result();
	}
	public function get_technology_infor($sql)
	{

		return $this->db->query($sql)->result();

	}
	public function get_technology_infor_count($sql)
	{


		return $this->db->query($sql)->num_rows();
	}
	


	
	//end technology_Infor_model
	//start promotion model

	public function get_list_promotion($sql)
	{
		return  $this->db->query($sql)->result();
	}

	public function get_phone_promotion($brand_id , $page)
	{

		if($page == "")
		{
			$sql = "select * from product where brands_id LIKE '%$brand_id' and promotion_percent > 0";
			return $this->db->query($sql)->num_rows();


		}
		else
		{


			$offset = 12 * $page;
			$limit = 12;
			
			$sql = "select * from product  where brands_id LIKE '%$brand_id' and promotion_percent > 0 limit $offset, $limit ";
			return $this->db->query($sql)->result();


		}

	}

	public function get_accessory_promotion($accessory_category_id , $page)
	{

		if($page == "")
		{

			$sql = "select * from accessories where  accessories_category_id LIKE '%$accessory_category_id' and  promotion_percent > 0";
			return $this->db->query($sql)->num_rows();

		}
		else
		{

			$offset = 12 * $page;
			$limit = 12;
			
			$sql = "select * from accessories  where  accessories_category_id LIKE '%$accessory_category_id'  and promotion_percent > 0 limit $offset, $limit ";
			return $this->db->query($sql)->result();

		}


	}

	// end promotion model
	//start phone detail model

	public function get_infor_phoneDetail($sql)
	{


		return $this->db->query($sql);


	}
	public function get_infor_phoneDetail_count($sql)
	{


		return $this->db->query($sql)->num_rows();


	}
	public function get_other_phone($id,$brand_id)
	{


		$sql = "select * from product where brands_id = $brand_id and id != $id  limit 2 ";
		return $this->db->query($sql)->result();


	}
	public function get_other_phone_count($id,$brand_id)
	{


		$sql = "select * from product where brands_id = $brand_id and id != $id  limit 2 ";
		return $this->db->query($sql)->num_rows();


	}
	public function add_comment($table,$arr)
	{
		$this->db->insert($table,$arr);
		
	}

	public function get_num_comment($sql)
	{

		return $this->db->query($sql)->num_rows();
	}

	public function get_comment($sql)
	{

		return $this->db->query($sql)->result_array();

	}
	public function get_user_comment($sql)
	{

		return $this->db->query($sql)->row_array();

	}
	public function get_comment_count($sql)
	{


		return $this->db->query($sql)->num_rows();
	}
	public function get_comment_product($sql)
	{

		return $this->db->query($sql)->result();

	}



	//end phone detail model


	//start register model

	public function get_num_register($sql)
	{

		return $this->db->query($sql)->num_rows();

	}

	public function get_user($sql)
	{

		return $this->db->query($sql)->row_array();
	}

	public function add_customer($table,$arr)
	{
		$this->db->insert($table,$arr);
		$insert_id = $this->db->insert_id();
		return $insert_id;
	}
	public function get_num_users($sql)
	{

		return $this->db->query($sql)->num_rows();
	}


	//end  register model


	//start search
	function search_post($str)
	{

		$sql = "select * from product where name like '%$str%' limit 7";
		return $this->db->query($sql)->result();
		
	
	}

	public function get_autocomplete($search_data) 
	{

		$this->db->select('id');
        $this->db->select('name');
       
        $this->db->like('name', $search_data);
        return $this->db->get('product', 10);
    }

	//end search

    //start phone controller // order method

   
    public function color_phone($sql)
    {

    	return $this->db->query($sql)->result();
    	
    }


    public function get_accessory_order($sql)
    {

    	return $this->db->query($sql)->result();
    }

    //end  phone controller // order method

    //start accessory detail

    public function get_infor_accessoryDetail($sql)
	{


		return $this->db->query($sql);


	}
    //end accessory detail


    //model Admin //model Admin //model Admin //model Admin //model Admin //model Admin //model Admin



	//start model admin phone

	public function get_name_operatingSystem()
	{

		$sql = "select * from operating_system";
		return $this->db->query($sql)->result();

	}

	public function get_num_os($name,$id)
	{


		$sql = "select * from version_os where name= '$name' and operating_system_id = $id";
		return $this->db->query($sql)->num_rows();
	}
	public function get_num_name_version_os($name)
	{


		$sql = "select * from version_os where name= '$name'";
		return $this->db->query($sql)->num_rows();
	}
	public function add_version_os($table,$arr)
	{

		$this->db->insert($table,$arr);

	}
	public function get_version_os()
	{

		$sql = "select * from version_os ";
		return $this->db->query($sql)->result();

	}
	public function delete($where,$table){
		$this->db->where($where);
		$this->db->delete($table);
	}


	public function update($where,$table,$arr){
		$this->db->where($where);
		$this->db->update($table,$arr);
	}

	public function edit_version_os($id)
	{

		$sql = "select * from version_os where id = $id";
		return $this->db->query($sql)->row_array();
	}

	public function get_count($sql)
	{


		return $this->db->query($sql)->num_rows();
	}

	// SCREEN LEVEL MODEL


	public function get_screen_level()
	{

		$sql = "select * from screen_level";
		return $this->db->query($sql)->result();

	}

	public function get_num_name_screen_level($name)
	{


		$sql = "select * from screen_level where name= '$name'";
		return $this->db->query($sql)->num_rows();
	}

	public function add_screen_level($table,$arr)
	{

		$this->db->insert($table,$arr);

	}
	public function edit_screen_level($id)
	{

		$sql = "select * from screen_level where id = $id";
		return $this->db->query($sql)->row_array();
	}
	public function get_num_screen_level($name)
	{


		$sql = "select * from screen_level where name= '$name'";
		return $this->db->query($sql)->num_rows();
	}



	//ENS SCREEN LEVEL MODEL

	//START PRICE LEVEL MODEL


	public function get_priceLevel()
	{

		$sql = "select * from price_level ";
		return $this->db->query($sql)->result();

	}

	public function get_num_name_price_level($name)
	{


		$sql = "select * from price_level where name= '$name'";
		return $this->db->query($sql)->num_rows();
	}

	public function add_price_level($table,$arr)
	{

		$this->db->insert($table,$arr);

	}
	public function edit_price_level($id)
	{

		$sql = "select * from price_level where id = $id";
		return $this->db->query($sql)->row_array();
	}
	public function get_num_price_level($name)
	{


		$sql = "select * from price_level where name= '$name'";
		return $this->db->query($sql)->num_rows();
	}

	// END PRICE LEVEL MODEL
	//START OPERATINGSYSTEM

	public function get_operatingSystem()
	{

		$sql = "select * from operating_system";
		return $this->db->query($sql)->result();

	}
	public function get_num_name_operatingSystem($name)
	{


		$sql = "select * from operating_system where name= '$name'";
		return $this->db->query($sql)->num_rows();
	}
	public function add_operatingSystem($table,$arr)
	{

		$this->db->insert($table,$arr);

	}
	public function edit_operating_system($id)
	{

		$sql = "select * from operating_system where id = $id";
		return $this->db->query($sql)->row_array();
	}
	public function get_num_operating_system($name)
	{


		$sql = "select * from operating_system where name = '$name'";
		return $this->db->query($sql)->num_rows();
	}



	// END OPERATINGSYSTEM
	// START BRAND PHONE


	public function get_brand()
	{

		$sql = "select * from brand";
		return $this->db->query($sql)->result();

	}
	public function get_num_name_brand($name)
	{


		$sql = "select * from brand where name= '$name'";
		return $this->db->query($sql)->num_rows();
	}
	public function add_brand($table,$arr)
	{

		$this->db->insert($table,$arr);

	}
	public function edit_brand($id)
	{

		$sql = "select * from brand where id = $id";
		return $this->db->query($sql)->row_array();
	}
	public function get_num_brand($name)
	{


		$sql = "select * from brand where name = '$name'";
		return $this->db->query($sql)->num_rows();
	}



	// ENS BRAND PHONE
	//START ACCESSORTY CATEGORY

	public function get_accessory_category()
	{

		$sql = "select * from accessories_category";
		return $this->db->query($sql)->result();

	}
	public function get_num_name_accessory_category($name)
	{


		$sql = "select * from accessories_category where name= '$name'";
		return $this->db->query($sql)->num_rows();
	}
	public function edit_accessory_category($id)
	{

		$sql = "select * from accessories_category where id = $id";
		return $this->db->query($sql)->row_array();
	}
	public function get_num_accessory_category($name)
	{


		$sql = "select * from accessories_category where name = '$name'";
		return $this->db->query($sql)->num_rows();
	}
	public function add_accessory_category($table,$arr)
	{

		$this->db->insert($table,$arr);

	}



	//END ACCESSORY CATEGORY
	//START ACCESSORY MODEL
	public function get_name_accessory_category()
	{

		$sql = "select * from accessories_category";
		return $this->db->query($sql)->result();

	}
	public function get_product_id()
	{

		$sql = "select * from product";
		return $this->db->query($sql)->result();
	}
	public function add_accessory($table,$arr)
	{

		$this->db->insert($table,$arr);

	}
	public function get_num_name_accessory($name)
	{


		$sql = "select * from accessories where name= '$name'";
		return $this->db->query($sql)->num_rows();
	}
	public function edit_accessory_category_id($id)
	{

		$sql = "select * from accessories where id = $id";
		return $this->db->query($sql)->row_array();
	}
	public function edit_phone_id($id)
	{

		$sql = "select * from accessories where id = $id";
		return $this->db->query($sql)->row_array();
	}
	public function get_accessory()
	{

		$sql = "select * from accessories ";
		return $this->db->query($sql)->result();

	}
	public function get_accessory_update($id)
	{

		$sql = "select * from accessories where id = $id";
		return $this->db->query($sql)->row_array();

	}
	//END ACCESSORY MODEL


	//START TECHNOLOGY INFOR CATEGORY
	public function get_technology_infor_category()
	{

		$sql = "select * from technology_infor_category";
		return $this->db->query($sql)->result();

	}
	public function get_num_name_technology_infor_category($name)
	{


		$sql = "select * from technology_infor_category where name= '$name'";
		return $this->db->query($sql)->num_rows();
	}
	public function add_technology_infor_category($table,$arr)
	{

		$this->db->insert($table,$arr);

	}
	public function edit_technology_infor_category($id)
	{

		$sql = "select * from technology_infor_category where id = $id";
		return $this->db->query($sql)->row_array();
	}
	public function get_num_technology_infor_category($name)
	{


		$sql = "select * from technology_infor_category where name = '$name'";
		return $this->db->query($sql)->num_rows();
	}
	//END TECHNOLOGY INFOR CATEGORY
	//START USER MODEL

	public function get_users()
	{

		$sql = "select * from users";
		return $this->db->query($sql)->result();

	}
	public function get_num_name_user($name)
	{


		$sql = "select * from users where username= '$name'";
		return $this->db->query($sql)->num_rows();
	}
	public function add_user_register($table,$arr)
	{

		$this->db->insert($table,$arr);

	}
	public function edit_user_register($id)
	{

		$sql = "select * from users where id = $id";
		return $this->db->query($sql)->row_array();
	}
	public function get_num_user_register($name)
	{


		$sql = "select * from users where username = '$name'";
		return $this->db->query($sql)->num_rows();
	}


	//END USER MODEK
	//START USER NOT REGISTER

	public function get_users_not_register()
	{

		$sql = "select * from user_order_notregister";
		return $this->db->query($sql)->result();

	}
	public function delete_comment($id, $type_user)
	{

		$sql = "delete from comment where user_id = $id and type_user = $type_user ";
		return $this->db->query($sql);

	}

	//END USER NOT REGISTER


	//START PRÔMTION
	public function get_promotion_phone()
	{

		$sql = "select * from product";
		return $this->db->query($sql)->result();

	}



	public function edit_promotion_phone($id)
	{

		$sql = "select * from product where id = $id";
		return $this->db->query($sql)->row_array();
	}
	public function get_num_phone($name)
	{


		$sql = "select * from product where name = '$name'";
		return $this->db->query($sql)->num_rows();
	}

	public function get_promotion_accessory()
	{

		$sql = "select * from accessories";
		return $this->db->query($sql)->result();

	}
	public function edit_promotion_accessory($id)
	{

		$sql = "select * from accessories where id = $id";
		return $this->db->query($sql)->row_array();
	}


	//END PROMOTIOM
	//START COLOR

	public function get_color()
	{

		$sql = "select * from color";
		return $this->db->query($sql)->result();

	}
	public function get_num_name_color($name)
	{


		$sql = "select * from color where name= '$name'";
		return $this->db->query($sql)->num_rows();
	}
	public function add_color($table,$arr)
	{

		$this->db->insert($table,$arr);

	}
	public function edit_color($id)
	{

		$sql = "select * from color where id = $id";
		return $this->db->query($sql)->row_array();
	}
	public function get_num_color($name)
	{


		$sql = "select * from color where name = '$name'";
		return $this->db->query($sql)->num_rows();
	}

	//END COLOR
	//START PRODUCT COLOR


	public function get_product_color()
	{

		$sql = "select * from product_color ";
		return $this->db->query($sql)->result();

	}
	public function get_name_phone()
	{

		$sql = "select * from product";
		return $this->db->query($sql)->result();

	}
	public function get_name_color()
	{

		$sql = "select * from color";
		return $this->db->query($sql)->result();

	}
	public function add_color_phone($table,$arr)
	{

		$this->db->insert($table,$arr);

	}
	public function product_color_selected($id)
	{

		$sql = "select * from product_color where id = $id";
		return $this->db->query($sql)->row_array();

	}
	public function color_selected($id)
	{

		$sql = "select * from product_color where id = $id";
		return $this->db->query($sql)->row_array();

	}
	public function get_num_product_color($phone_id,$color_id)
	{


		$sql = "select * from product_color where product_id= $phone_id and color_id = $color_id";
		return $this->db->query($sql)->num_rows();
	}

	//END PRODUCT COLOR
	//START ACCESSORY COLOR

	public function get_accessory_color()
	{

		$sql = "select * from accessories_color ";
		return $this->db->query($sql)->result();

	}
	public function get_name_accessory()
	{

		$sql = "select * from accessories";
		return $this->db->query($sql)->result();

	}
	public function accessory_color_selected($id)
	{

		$sql = "select * from accessories_color where id = $id";
		return $this->db->query($sql)->row_array();

	}
	public function add_color_accessory($table,$arr)
	{

		$this->db->insert($table,$arr);

	}
	public function color_accessory_selected($id)
	{

		$sql = "select * from accessories_color where id = $id";
		return $this->db->query($sql)->row_array();

	}




	//END ACCESSORY COLOR
	//Phone order data


	public function get_phone_order_usernotregister()
	{

		$sql = "select  *, product.name as product_name, product.price as price, orders.id as id_order,count(orders.id_receipt) as total_accessories from orders, user_order_notregister,product, product_color,color
		 where orders.product_id = product_color.id
		 and orders.person_order_id = user_order_notregister.id 
		 and product_color.product_id = product.id
		 and product_color.color_id = color.id
		 and type_user = 0 group by orders.id_receipt";
		return $this->db->query($sql)->result();

	}
	public function get_phone_order_userregister()
	{

		$sql = "select  *, product.name as product_name, product.price as price, orders.id as id_order,count(orders.id_receipt) as total_accessories from orders, users,product, product_color,color
		 where orders.product_id = product_color.id
		 and orders.person_order_id = users.id 
		 and product_color.product_id = product.id
		 and product_color.color_id = color.id
		 and type_user = 1 group by orders.id_receipt";
		return $this->db->query($sql)->result();
	}
	public function get_accessory_order_usernotregister()
	{

		$sql = "select  *, accessories.name as accessories_name, accessories.price as accessory_price, orders.id as id_order from orders, user_order_notregister,accessories, accessories_color,color
		 where orders.accessories_color_id = accessories_color.id
		 and accessories_color.accessories_id = accessories.id
		 and accessories_color.color_id = color.id
		 and orders.person_order_id = user_order_notregister.id 
		 and type_user = 0";
		return $this->db->query($sql)->result();

	}
	public function get_accessory_order_userregister()
	{

		$sql = "select  *, accessories.name as accessories_name, accessories.price as accessory_price, orders.id as id_order from orders, users,accessories, accessories_color,color
		 where orders.accessories_color_id = accessories_color.id
		 and accessories_color.accessories_id = accessories.id
		 and accessories_color.color_id = color.id
		 and orders.person_order_id = users.id 
		 and type_user = 1";
		return $this->db->query($sql)->result();
	}

	public function  value_null_ornot($id)
	{

			$sql = "select * from orders where id = $id";
			return $this->db->query($sql)->row_array();
	}
	public function  value_null_ornot_phone($id)
	{

			$sql = "select * from orders where id_receipt = $id";
			return $this->db->query($sql)->result_array();
	}


	//end phone order data
	//START COMMENT PHONE
	public function get_comment_phone_usernot_register()
	{

		$sql ="select *,user_order_notregister.fullname as name_user_notregister,product.name as item_phone, comment.comments as comment from  user_order_notregister ,product,comment where comment.item_id = product.id and
               comment.user_id = user_order_notregister.id and comment.type_user = 0 and comment.type_item = 1";
		return $this->db->query($sql)->result();
	}
	public function get_comment_phone_user_register()
	{

		$sql ="select *,users.fullname as name_user_register,product.name as item_phone, comment.comments as comment from  users ,product ,comment where comment.item_id = product.id and
               comment.user_id = users.id and comment.type_user = 1 and  comment.type_item = 1";
		return $this->db->query($sql)->result();
	}
	//END COMMENT PHONE
	//START COMMENT ACCESSORY

	public function get_comment_accessory_usernot_register()
	{

		$sql ="select *,user_order_notregister.fullname as name_user_notregister,accessories.name as item_accessory, comment.comments as comment from  user_order_notregister ,accessories,comment where comment.item_id = accessories.id and
               comment.user_id = user_order_notregister.id and comment.type_user = 0 and comment.type_item = 2";
		return $this->db->query($sql)->result();
	}
	public function get_comment_accessory_user_register()
	{

		$sql ="select *,users.fullname as name_user_register,accessories.name as item_accessory, comment.comments as comment from  users ,accessories ,comment where comment.item_id = accessories.id and
               comment.user_id = users.id and comment.type_user = 1 and  comment.type_item = 2";
		return $this->db->query($sql)->result();
	}
	//END COMMENT ACCESSORY
	//START COMMENT TECHNOLOGY INFOR

	public function get_comment_techinfor_usernot_register()
	{

		$sql ="select *,user_order_notregister.fullname as name_user_notregister,technology_infor.name as item_techinfor, comment.comments as comment from  user_order_notregister ,technology_infor,comment where comment.item_id = technology_infor.id and
               comment.user_id = user_order_notregister.id and comment.type_user = 0 and comment.type_item = 3";
		return $this->db->query($sql)->result();
	}
	public function get_comment_techinfor_user_register()
	{

		$sql ="select *,users.fullname as name_user_register,technology_infor.name as item_techinfor, comment.comments as comment from  users ,technology_infor ,comment where comment.item_id = technology_infor.id and
               comment.user_id = users.id and comment.type_user = 1 and  comment.type_item = 3";
		return $this->db->query($sql)->result();
	}


	//END COMMENT TECHNOLOGY INFOR
	//START TECHNOLOGY INFOR

	

	public function get_technology_infors()
	{

		$sql = "select * from technology_infor";
		return $this->db->query($sql)->result();

	}
	public function get_technology_infors_category()
	{

		$sql = "select * from technology_infor_category";
		return $this->db->query($sql)->result();

	}
	public function get_phone_id()
	{

		$sql = "select * from product";
		return $this->db->query($sql)->result();

	}
	public function get_num_name_technology_infor($name)
	{


		$sql = "select * from technology_infor where name= '$name'";
		return $this->db->query($sql)->num_rows();
	}
	public function _createThumbnail($filename, $path, $width, $height) {
        $config['image_library'] = "gd2";
        $config['source_image'] = $path . $filename;
        $config['new_image'] = $path . "/thumb/";
        $config['quality'] = '100%';
        $config['maintain_ratio'] = TRUE;
        $config['width'] = $width;
        $config['height'] = $height;
        $this->load->library('image_lib', $config);
        if (!$this->image_lib->resize()) {
            echo $this->image_lib->display_errors();
        }
    }
    public function add_technology_infor($table,$arr)
    {

    	$this->db->insert($table,$arr);
    }
    
    function get_techinfo_by_id($id){
    	$this->db->select('*')
    			->from('technology_infor')
    			->where('id', $id);
    	$q = $this->db->get();
    	return $q->row();
    }

    function update_technology_infor($data, $id){

    	$this->db->where('id', $id);
    	$this->db->update('technology_infor', $data);

    }







	//END TECHNOLOGY INFOR
	//START IMAGE ACCESSORY
	public function get_image_accessory()
	{

		$sql = "select * from image_accessories";
		return $this->db->query($sql)->result();

	}
	function get_image_accessory_by_id($id){
    	$this->db->select('*')
    			->from('image_accessories')
    			->where('id', $id);
    	$q = $this->db->get();
    	return $q->row();
    }
    public function get_accessory_id()
	{

		$sql = "select * from accessories";
		return $this->db->query($sql)->result();

	}
	public function add_image_accessory($table,$arr)
	{

		$this->db->insert($table,$arr);

	}
	 function update_image_accessory($data, $id){

    	$this->db->where('id', $id);
    	$this->db->update('image_accessories', $data);

    }

	//END IMAGE ACCESSORY
	//START IMAGE PHONE
	public function get_image_phone()
	{

		$sql = "select * from image_product";
		return $this->db->query($sql)->result();

	}
	 function get_image_phone_by_id($id){
    	$this->db->select('*')
    			->from('image_product')
    			->where('id', $id);
    	$q = $this->db->get();
    	return $q->row();
    }
    public function add_image_phone($table,$arr)
	{

		$this->db->insert($table,$arr);

	}
	
     function update_image_phone($data, $id){

    	$this->db->where('id', $id);
    	$this->db->update('image_product', $data);

    }
   
	//END IMAGE PHONE


	


	 
    function select_product_color($sql) {
    	return $this->db->query($sql)->row_array();
    }


    //start Phone admin


    public function get_num_name_phone($name)
	{


		$sql = "select * from product where name= '$name'";
		return $this->db->query($sql)->num_rows();
	}
	public function add_phone($table,$arr)
	{

		$this->db->insert($table,$arr);

	}
	public function get_phones()
	{

		$sql = "select * from product ";
		return $this->db->query($sql)->result();

	}
	public function get_phone_select($id)
	{

		$sql = "select * from product where id = $id";
		return $this->db->query($sql)->row();

	}



    //End phone admin
    //end model admin


    //START IMAGE PHONE

	public function get_main_image_phone($id)
	{

		$sql = "select * from image_product where product_id = $id and type_image = 1";
		return $this->db->query($sql);
	}
	public function get_logo_image($id)
	{
		$sql = "select * from image_product where product_id = $id and type_image = 4";
		return $this->db->query($sql);


	}
	

	
	public function get_normal_image($id)
	{
		$sql =  "select * from image_product where product_id = $id and type_image = 2";
		return $this->db->query($sql);

	}
	public function get_image_tech($id)
	{

		$sql =  "select * from image_product where product_id = $id and type_image = 3";
		return $this->db->query($sql);

	}





    //END IMAGE PHONE
    //START ACCESSORY IMAGE

	public function get_logoaccessory_image($id)
	{
		$sql = "select * from image_accessories where accessory_id = $id and type_image = 1";
		return $this->db->query($sql);


	}
	public function get_normalaccessory_image($id)
	{
		$sql =  "select * from image_accessories where accessory_id = $id and type_image = 2";
		return $this->db->query($sql);

	}



    //END ACCESSORY IMAGE
    //START TECHNOLOGY IMAGE

    public function get_image_techInfor($id)
	{
		$sql = "select * from technology_infor where id = $id";
		return $this->db->query($sql);


	}
    //END TECHNOLOGY IMAGE

    public function get_profile($id)
    {

    	$sql = "select * from users where id = $id";
    	return $this->db->query($sql)->result();

    }



    public function confirmPassword($id)
    {

    	$sql = "select * from users where id = $id";
    	
    	return $this->db->query($sql)->row_array();

    }
}
