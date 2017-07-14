<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class phone extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		if($this->session->userdata('permission_id') != 1)header("location:".site_url('register/sign_in'));
		$this->load->view('admin/header');
		$this->load->view('admin/version_os/listMenu');
		
      

	}


	public function index()
	{
		
		$data['phone'] = $this->model->get_phones();
       	$this->load->view('admin/phone/view_phone',$data);
       	$this->load->view('admin/footer');

	}
	public function delete($id)
	{

		$id = $this->uri->segment(5);
		$this->model->delete(array('id'=>$id),'product');
		header("location:".site_url('admin/phone/phone/index'));

	}
	public function insert()
	{
		$data['error'] ='';
		$data['brand_id'] = $this->model->get_brand();
		$data['operating_system'] = $this->model->get_operatingSystem();
		$data['screen_level_id'] = $this->model->get_screen_level();
		$data['price_level_id'] = $this->model->get_priceLevel();
		$data['version_id'] = $this->model->get_version_os();

		if(isset($_POST['submit']))
		{
			
			$arr['brands_id'] = $name=  $this->input->post('brand_id');
			$arr['operating_system_id'] =  $this->input->post('operating_system');
			$arr['screen_level_id'] =   $this->input->post('screen_level_id');
			$arr['price_level_id'] =   $this->input->post('price_level');
			$arr['version_id'] =   $this->input->post('version_id');

			$arr['name'] =   $this->input->post('name');
			$arr['price'] =  $this->input->post('price');
			$arr['stored'] =  $this->input->post('stored');
			$arr['short_des'] =  $this->input->post('short_des');
			$arr['long_des'] =  $this->input->post('long_des');

			$arr['promotion_gift'] =  $this->input->post('promotion_gift');
			$arr['promotion_percent'] = 0;
			$arr['touch_screen_tech'] =  $this->input->post('screen_tech');
			$arr['resolution'] =  $this->input->post('screen_resolution');
			$arr['screen_size'] =  $this->input->post('screen_size');

			$arr['induction'] =  $this->input->post('screen_induction');
			$arr['touch_glass'] =  $this->input->post('screen_touchglass');
			$arr['resolution_cameraback'] =  $this->input->post('cameraback_resolution');
			$arr['film_cameraback'] =  $this->input->post('film_cameraback');
			$arr['flash_cameraback'] =  $this->input->post('flash_cameraback');

			$arr['capture_cameraback'] =  $this->input->post('capture_cameraback');
			$arr['resolution_camerafront'] =  $this->input->post('resolution_camerafront');
			$arr['film_camerafront'] =  $this->input->post('film_camerafront');
			$arr['videocall_camerafront'] =  $this->input->post('videocall_camerafront');
			$arr['otherinfor_camerafront'] =  $this->input->post('otherinfor_camerafront');

			$arr['chipset'] =  $this->input->post('chipset');
			$arr['cpu_speed'] =  $this->input->post('cpu_speed');
			$arr['gpu'] =  $this->input->post('gpu');
			$arr['ram'] =  $this->input->post('ram');
			$arr['rom'] =  $this->input->post('rom');

			$arr['remaining_memory'] =  $this->input->post('remaining_memory');
			$arr['external_memory'] =  $this->input->post('external_memory');
			$arr['max_card_support'] =  $this->input->post('max_card_support');
			$arr['spectrum_2g'] =  $this->input->post('spectrum_2g');
			$arr['spectrum_3g'] =  $this->input->post('spectrum_3g');

			$arr['support_4g'] =  $this->input->post('support_4g');
			$arr['sim_slot'] =  $this->input->post('sim_slot');
			$arr['sim_type'] =  $this->input->post('sim_type');
			$arr['wifi'] =  $this->input->post('wifi');
			$arr['gps'] =  $this->input->post('gps');

			$arr['bluetooth'] =  $this->input->post('bluetooth');
			$arr['nfc'] =  $this->input->post('nfc');
			$arr['connector_charger'] =  $this->input->post('connector_charger');
			$arr['headphone_jack'] =  $this->input->post('handphone_jack');
			$arr['other_connect'] =  $this->input->post('other_connect');

			$arr['design'] =  $this->input->post('design');
			$arr['material'] =  $this->input->post('material');
			$arr['sizeall'] =  $this->input->post('sizeall');
			$arr['weight'] =  $this->input->post('weight');
			$arr['battery_capacity'] =  $this->input->post('battery_capacity');

			$arr['battery_type'] =  $this->input->post('battery_type');
			$arr['playing_movie'] =  $this->input->post('playing_movie');
			$arr['playing_music'] =  $this->input->post('playing_music');
			$arr['recording'] =  $this->input->post('recording');
			$arr['playing_radio'] =  $this->input->post('playing_radio');

			$arr['otherinfor_playing'] =  $this->input->post('otherinfor_playing');



			$this->form_validation->set_rules('brand_id','Brand ID','required');
			$this->form_validation->set_rules('operating_system','Operating System type','required');
			$this->form_validation->set_rules('screen_level_id','Screen level','required');
			$this->form_validation->set_rules('price_level','Price level','required');
			$this->form_validation->set_rules('version_id','Version id','required');
			$this->form_validation->set_rules('name','Name','required');
			$this->form_validation->set_rules('price','Price','required');
			$this->form_validation->set_rules('stored','Stored','required');
		//	$this->form_validation->set_rules('short_des','Short des','required');
		//	$this->form_validation->set_rules('long_des','Long des','required');
		//	$this->form_validation->set_rules('promotion_gift','Promotion gift','required');
			$this->form_validation->set_rules('screen_tech','Screen tech','required');
			$this->form_validation->set_rules('screen_resolution','Screen resolution','required');
			$this->form_validation->set_rules('screen_size','Screen size','required');

			$this->form_validation->set_rules('screen_induction','Screen induction','required');
			$this->form_validation->set_rules('screen_touchglass','Screen touch','required');
			$this->form_validation->set_rules('cameraback_resolution','Screen resolution','required');
			$this->form_validation->set_rules('film_cameraback','Film camera back','required');
			$this->form_validation->set_rules('flash_cameraback','Flash cameraback','required');

			$this->form_validation->set_rules('capture_cameraback','Capture cameraback','required');
			$this->form_validation->set_rules('resolution_camerafront','Resolution cameraback','required');
			$this->form_validation->set_rules('film_camerafront','Film cameraback','required');
			$this->form_validation->set_rules('videocall_camerafront','Videocall cameraback','required');
			$this->form_validation->set_rules('otherinfor_camerafront','Other infor cameraback','required');	
			
			$this->form_validation->set_rules('chipset','Chipset','required');
			$this->form_validation->set_rules('cpu_speed','CPU','required');
			$this->form_validation->set_rules('gpu','GPU','required');
			$this->form_validation->set_rules('ram','RAM','required');
			$this->form_validation->set_rules('rom','ROM','required');

			$this->form_validation->set_rules('remaining_memory','Remaining memory','required');
			$this->form_validation->set_rules('external_memory','External memory','required');
			$this->form_validation->set_rules('max_card_support','Max card ','required');
			$this->form_validation->set_rules('spectrum_2g','Spectrum 2g','required');
			$this->form_validation->set_rules('spectrum_3g','Spectrum 3g','required');
			
			
			$this->form_validation->set_rules('support_4g','Support 4g','required');
			$this->form_validation->set_rules('sim_slot','Sim slot','required');
			$this->form_validation->set_rules('sim_type','Sim type','required');
			$this->form_validation->set_rules('wifi','Wifi','required');
			$this->form_validation->set_rules('gps','GPS','required');

			$this->form_validation->set_rules('bluetooth','Bluetooth','required');
			$this->form_validation->set_rules('nfc','NFC','required');
			$this->form_validation->set_rules('connector_charger','Connect charger','required');
			$this->form_validation->set_rules('handphone_jack','Handphone Jack','required');
			$this->form_validation->set_rules('other_connect','Other connect','required');

			$this->form_validation->set_rules('design','Design','required');
			$this->form_validation->set_rules('material','Material','required');
			$this->form_validation->set_rules('sizeall','Size all','required');
			$this->form_validation->set_rules('weight','Weight','required');
			$this->form_validation->set_rules('battery_capacity','Battery Capacitu','required');

			$this->form_validation->set_rules('battery_type','Battery type','required');
			$this->form_validation->set_rules('playing_movie',' Playing Movie','required');
			$this->form_validation->set_rules('playing_music','Playing Music','required');
			$this->form_validation->set_rules('recording','Recording','required');
			$this->form_validation->set_rules('playing_radio','Playing Radio','required');
			$this->form_validation->set_rules('otherinfor_playing','Otherinfor Playing','required');
			
			
			




			
			

		   	if($this->form_validation->run()== TRUE)
		   	{

		   		$num = $this->model->get_num_name_phone($name);
		   		if($num <= 0)
		   		{
		   			$this->model->add_phone('product',$arr);
		   			header("location:".site_url('admin/phone/phone/index'));

		   		}
		   		else
		   		{

		   			$data['error']  = "Tên  điện thoại đã có.";
		   		}

		   	}

		}
			$this->load->view('admin/phone/insert_phone',$data);
			$this->load->view('admin/footer');

	}
	public function update($id)
	{


		$id = $this->uri->segment(5);
		$data['error'] ='';
		$data['brand_id'] = $this->model->get_brand();
		$data['operating_system'] = $this->model->get_operatingSystem();
		$data['screen_level_id'] = $this->model->get_screen_level();
		$data['price_level_id'] = $this->model->get_priceLevel();
		$data['version_id'] = $this->model->get_version_os();

		$data['phone_select'] = $this->model->get_phone_select($id);

		
	

		if(isset($_POST['submit']))
		{

			
			$arr['brands_id'] = $name=  $this->input->post('brand_id');
			$arr['operating_system_id'] =  $this->input->post('operating_system');
			$arr['screen_level_id'] =   $this->input->post('screen_level_id');
			$arr['price_level_id'] =   $this->input->post('price_level');
			$arr['version_id'] =   $this->input->post('version_id');

			$arr['name'] =   $this->input->post('name');
			$arr['price'] =  $this->input->post('price');
			$arr['stored'] =  $this->input->post('stored');
			$arr['short_des'] =  $this->input->post('short_des');
			$arr['long_des'] =  $this->input->post('long_des');

			$arr['promotion_gift'] =  $this->input->post('promotion_gift');
			$arr['promotion_percent'] = 0;
			$arr['touch_screen_tech'] =  $this->input->post('screen_tech');
			$arr['resolution'] =  $this->input->post('screen_resolution');
			$arr['screen_size'] =  $this->input->post('screen_size');

			$arr['induction'] =  $this->input->post('screen_induction');
			$arr['touch_glass'] =  $this->input->post('screen_touchglass');
			$arr['resolution_cameraback'] =  $this->input->post('cameraback_resolution');
			$arr['film_cameraback'] =  $this->input->post('film_cameraback');
			$arr['flash_cameraback'] =  $this->input->post('flash_cameraback');

			$arr['capture_cameraback'] =  $this->input->post('capture_cameraback');
			$arr['resolution_camerafront'] =  $this->input->post('resolution_camerafront');
			$arr['film_camerafront'] =  $this->input->post('film_camerafront');
			$arr['videocall_camerafront'] =  $this->input->post('videocall_camerafront');
			$arr['otherinfor_camerafront'] =  $this->input->post('otherinfor_camerafront');

			$arr['chipset'] =  $this->input->post('chipset');
			$arr['cpu_speed'] =  $this->input->post('cpu_speed');
			$arr['gpu'] =  $this->input->post('gpu');
			$arr['ram'] =  $this->input->post('ram');
			$arr['rom'] =  $this->input->post('rom');

			$arr['remaining_memory'] =  $this->input->post('remaining_memory');
			$arr['external_memory'] =  $this->input->post('external_memory');
			$arr['max_card_support'] =  $this->input->post('max_card_support');
			$arr['spectrum_2g'] =  $this->input->post('spectrum_2g');
			$arr['spectrum_3g'] =  $this->input->post('spectrum_3g');

			$arr['support_4g'] =  $this->input->post('support_4g');
			$arr['sim_slot'] =  $this->input->post('sim_slot');
			$arr['sim_type'] =  $this->input->post('sim_type');
			$arr['wifi'] =  $this->input->post('wifi');
			$arr['gps'] =  $this->input->post('gps');

			$arr['bluetooth'] =  $this->input->post('bluetooth');
			$arr['nfc'] =  $this->input->post('nfc');
			$arr['connector_charger'] =  $this->input->post('connector_charger');
			$arr['headphone_jack'] =  $this->input->post('handphone_jack');
			$arr['other_connect'] =  $this->input->post('other_connect');

			$arr['design'] =  $this->input->post('design');
			$arr['material'] =  $this->input->post('material');
			$arr['sizeall'] =  $this->input->post('sizeall');
			$arr['weight'] =  $this->input->post('weight');
			$arr['battery_capacity'] =  $this->input->post('battery_capacity');

			$arr['battery_type'] =  $this->input->post('battery_type');
			$arr['playing_movie'] =  $this->input->post('playing_movie');
			$arr['playing_music'] =  $this->input->post('playing_music');
			$arr['recording'] =  $this->input->post('recording');
			$arr['playing_radio'] =  $this->input->post('playing_radio');

			$arr['otherinfor_playing'] =  $this->input->post('otherinfor_playing');



			$this->form_validation->set_rules('brand_id','Brand ID','required');
			$this->form_validation->set_rules('operating_system','Operating System type','required');
			$this->form_validation->set_rules('screen_level_id','Screen level','required');
			$this->form_validation->set_rules('price_level','Price level','required');
			$this->form_validation->set_rules('version_id','Version id','required');
			$this->form_validation->set_rules('name','Name','required');
			$this->form_validation->set_rules('price','Price','required');
			$this->form_validation->set_rules('stored','Stored','required');
		//	$this->form_validation->set_rules('short_des','Short des','required');
		//	$this->form_validation->set_rules('long_des','Long des','required');
		//	$this->form_validation->set_rules('promotion_gift','Promotion gift','required');
			$this->form_validation->set_rules('screen_tech','Screen tech','required');
			$this->form_validation->set_rules('screen_resolution','Screen resolution','required');
			$this->form_validation->set_rules('screen_size','Screen size','required');

			$this->form_validation->set_rules('screen_induction','Screen induction','required');
			$this->form_validation->set_rules('screen_touchglass','Screen touch','required');
			$this->form_validation->set_rules('cameraback_resolution','Screen resolution','required');
			$this->form_validation->set_rules('film_cameraback','Film camera back','required');
			$this->form_validation->set_rules('flash_cameraback','Flash cameraback','required');

			$this->form_validation->set_rules('capture_cameraback','Capture cameraback','required');
			$this->form_validation->set_rules('resolution_camerafront','Resolution cameraback','required');
			$this->form_validation->set_rules('film_camerafront','Film cameraback','required');
			$this->form_validation->set_rules('videocall_camerafront','Videocall cameraback','required');
			$this->form_validation->set_rules('otherinfor_camerafront','Other infor cameraback','required');	
			
			$this->form_validation->set_rules('chipset','Chipset','required');
			$this->form_validation->set_rules('cpu_speed','CPU','required');
			$this->form_validation->set_rules('gpu','GPU','required');
			$this->form_validation->set_rules('ram','RAM','required');
			$this->form_validation->set_rules('rom','ROM','required');

			$this->form_validation->set_rules('remaining_memory','Remaining memory','required');
			$this->form_validation->set_rules('external_memory','External memory','required');
			$this->form_validation->set_rules('max_card_support','Max card ','required');
			$this->form_validation->set_rules('spectrum_2g','Spectrum 2g','required');
			$this->form_validation->set_rules('spectrum_3g','Spectrum 3g','required');
			
			
			$this->form_validation->set_rules('support_4g','Support 4g','required');
			$this->form_validation->set_rules('sim_slot','Sim slot','required');
			$this->form_validation->set_rules('sim_type','Sim type','required');
			$this->form_validation->set_rules('wifi','Wifi','required');
			$this->form_validation->set_rules('gps','GPS','required');

			$this->form_validation->set_rules('bluetooth','Bluetooth','required');
			$this->form_validation->set_rules('nfc','NFC','required');
			$this->form_validation->set_rules('connector_charger','Connect charger','required');
			$this->form_validation->set_rules('handphone_jack','Handphone Jack','required');
			$this->form_validation->set_rules('other_connect','Other connect','required');

			$this->form_validation->set_rules('design','Design','required');
			$this->form_validation->set_rules('material','Material','required');
			$this->form_validation->set_rules('sizeall','Size all','required');
			$this->form_validation->set_rules('weight','Weight','required');
			$this->form_validation->set_rules('battery_capacity','Battery Capacitu','required');

			$this->form_validation->set_rules('battery_type','Battery type','required');
			$this->form_validation->set_rules('playing_movie',' Playing Movie','required');
			$this->form_validation->set_rules('playing_music','Playing Music','required');
			$this->form_validation->set_rules('recording','Recording','required');
			$this->form_validation->set_rules('playing_radio','Playing Radio','required');
			$this->form_validation->set_rules('otherinfor_playing','Otherinfor Playing','required');
		   	if($this->form_validation->run()== TRUE)
		   	{
  		
		   			$this->model->update(array('id'=>$id),'product',$arr);
		   			header("location:".site_url('admin/phone/phone/index'));

		   	}

		}

		$this->load->view('admin/phone/update_phone',$data);
		$this->load->view('admin/footer');	

	}

}