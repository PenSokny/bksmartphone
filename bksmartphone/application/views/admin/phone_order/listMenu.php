<div class="container phone_Admin">
	<ul class="nav nav-tabs nav-pills">
    	<li class="<?php if($this->uri->segment(3)=='phone_order') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/order/phone_order'); ?>"><i class="fa fa-list-alt"></i>Điện thoại khách đăng ký mua</a></li>
    	<li class="<?php if($this->uri->segment(3)=='accessory_order') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/order/accessory_order'); ?>"><i class="fa fa-list-alt"></i>Phụ kiện khách đăng ký mua</a></li>
    	
    </ul>   
</div>