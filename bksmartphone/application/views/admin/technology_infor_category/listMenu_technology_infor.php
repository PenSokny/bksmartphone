<div class="container phone_Admin">
	<ul class="nav nav-tabs nav-pills">
    	<li class="<?php if($this->uri->segment(3)=='technology_infor_category') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/technology_infor/technology_infor_category'); ?>"><i class="fa fa-list-alt"></i>Thể loại Công Nghệ</a></li>
    	<li class="<?php if($this->uri->segment(3)=='technology_infor') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/technology_infor/technology_infor'); ?>"><i class="fa fa-list-alt"></i>Công Nghệ</a></li>
    	<li class="<?php if($this->uri->segment(3)=='comment_techinfor') { echo 'menu_select';}?>"><a href="<?php echo site_url('admin/technology_infor/comment_techinfor'); ?>"><i class="fa fa-list-alt"></i>Bình luận Công Nghệ</a></li>
    	
    </ul>   
</div>