<div class="container phone_Admin">
	<ul class="nav nav-tabs nav-pills">
        <li class="<?php if($this->uri->segment(3)=='phone') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/phone/phone'); ?>"><i class="fa fa-list-alt"></i>Điện thoại</a></li>
    	<li class="<?php if($this->uri->segment(3)=='version_os') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/phone/version_os'); ?>"><i class="fa fa-list-alt"></i>Phiên bản HĐH</a></li>
    	<li class="<?php if($this->uri->segment(3)=='screenLevel') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/phone/screenLevel'); ?>"><i class="fa fa-list-alt"></i>Độ màn hình</a></li>
    	<li class="<?php if($this->uri->segment(3)=='priceLevel') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/phone/priceLevel'); ?>"><i class="fa fa-group"></i> Mức giá</a></li> 
    	<li class="<?php if($this->uri->segment(3)=='operatingSystem') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/phone/operatingSystem'); ?>"><i class="fa fa-group"></i> Hệ điều hành</a></li>
        <li class="<?php if($this->uri->segment(3)=='brand') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/phone/brand'); ?>"><i class="fa fa-group"></i> Thể Loại</a></li>
        <li class="<?php if($this->uri->segment(3)=='color') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/phone/color'); ?>"><i class="fa fa-group"></i>Màu</a></li>
        <li class="<?php if($this->uri->segment(3)=='product_color') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/phone/product_color'); ?>"><i class="fa fa-group"></i>Màu Điện Thoại</a></li>    
    </ul>
    <ul class="nav nav-tabs nav-pills">
        	
        <li class="<?php if($this->uri->segment(3)=='comment_phone') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/phone/comment_phone'); ?>"><i class="fa fa-group"></i>Bình luận điện thoại</a></li>       
    	<li class="<?php if($this->uri->segment(3)=='image_phone') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/phone/image_phone'); ?>"><i class="fa fa-group"></i> Hình ảnh điện thoại</a></li> 
    </ul>   
</div>