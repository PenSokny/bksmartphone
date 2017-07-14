<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class home extends CI_Controller {

	

	public function __construct()
	{

		parent::__construct();
		
		

	}


	public function index()
	{
		$this->load->view('header');
		$this->load->view('header_search');
		
		

		$sqlinforiphone = "select * from product where brands_id = 2 limit 0,6";
		$sqlinforsumsung = "select * from product where brands_id = 1 limit 0,6";
		$sqlinfornokia = "select * from product where brands_id = 3 limit 0,6";
		$sqlinforsony = "select * from product where brands_id = 4 limit 0,6";
		$sqlinforhtc = "select * from product where brands_id = 20 limit 0,6";
		

		$data['namePriceIphone'] = $this->model->get_phone($sqlinforiphone);
		$data['namePriceSumsung'] = $this->model->get_phone($sqlinforsumsung);
		$data['namePriceNokia'] = $this->model->get_phone($sqlinfornokia);
		$data['namePriceSony'] = $this->model->get_phone($sqlinforsony);
		$data['namePriceHtc'] = $this->model->get_phone($sqlinforhtc);

		$sql_allinfor_phone = "select * from technology_infor order by id DESC  limit 10 ";
		$data['all_infor_phone'] = $this->model->get_infor_phoneDetail($sql_allinfor_phone);
		$this->load->view('mainpage', $data);
		$this->load->view('footer');

	}
	public function autocomplete()
	{


		$search_data = $this->input->post('search_data');
        $query = $this->model->get_autocomplete($search_data);

        foreach ($query->result() as $row):
            echo "<li><a href='" . base_url() . "index.php/phone/phone_detail/" . $row->id . "'>" . $row->name . "</a></li>";
        endforeach;



	}


}
