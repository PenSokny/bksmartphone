<div class="container accessory_Admin">
	<ul class="nav nav-tabs nav-pills">
    	<li class="<?php if($this->uri->segment(3)=='accessory_category') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/accessory/accessory_category'); ?>"><i class="fa fa-list-alt"></i>Loại Phụ Kiện</a></li>
    	<li class="<?php if($this->uri->segment(3)=='accessory') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/accessory/accessory'); ?>"><i class="fa fa-list-alt"></i>Phụ Kiện</a></li>
    	<li class="<?php if($this->uri->segment(3)=='image_accessory') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/accessory/image_accessory'); ?>"><i class="fa fa-list-alt"></i>Hình ảnh Phụ Kiện</a></li>
    	<li class="<?php if($this->uri->segment(3)=='accessory_color') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/accessory/accessory_color'); ?>"><i class="fa fa-list-alt"></i>Màu Phụ Kiện</a></li>
    	<li class="<?php if($this->uri->segment(3)=='comment_accessory') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/accessory/comment_accessory'); ?>"><i class="fa fa-list-alt"></i>Bình luận phụ kiện</a></li>
    	
    </ul>   
</div>