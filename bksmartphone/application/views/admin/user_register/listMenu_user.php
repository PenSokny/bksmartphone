<div class="container phone_Admin">
	<ul class="nav nav-tabs nav-pills">
    	<li class="<?php if($this->uri->segment(3)=='user_register') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/user/user_register'); ?>"><i class="fa fa-list-alt"></i>Người đăng kỳ tài khoản</a></li>
    	<li class="<?php if($this->uri->segment(3)=='user_not_register') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/user/user_not_register'); ?>"><i class="fa fa-list-alt"></i>Người không đăng kỳ tài khoản</a></li>
    	
    </ul>   
</div>