<div class="container phone_Admin">
	<ul class="nav nav-tabs nav-pills">
    	<li class="<?php if($this->uri->segment(3)=='phone_promotion') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/promotion/phone_promotion'); ?>"><i class="fa fa-list-alt"></i>Khuyên mãi điện thoại</a></li>
    	<li class="<?php if($this->uri->segment(3)=='accessory_promotion') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/promotion/accessory_promotion'); ?>"><i class="fa fa-list-alt"></i>Khuyên mãi phụ kiện</a></li>
    	
    </ul>   
</div>