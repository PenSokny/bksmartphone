<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta charset=UTF-8 />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="">
    <title>Welcome to BK Smart Phone</title>
    <!-- Bootstrap core CSS -->
    

    <link href="<?php  echo base_url(); ?>assets/css/bootstrap.min.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    
    <link  type="text/css" href="<?php  echo base_url(); ?>assets/css/custome.css" rel="stylesheet">

    <script src="http://code.jquery.com/jquery-2.0.3.min.js"></script><!-- if have this we dont need this  this is on the top just work<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>-->
    <script src="<?php  echo base_url(); ?>assets/js/bootstrap.min.js"></script>
 
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
    <script src="<?php  echo base_url(); ?>assets/js/jquery.js"></script>
    <script type="text/javascript" src="<?php  echo base_url(); ?>assets/jqueryBoxslider/jquery.bxslider.min.js"></script>
   
    <link href="<?php  echo base_url(); ?>assets/jqueryBoxslider/jquery.bxslider.css" rel="stylesheet">
  

    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.11/css/jquery.dataTables.css">
  
    <script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.11/js/jquery.dataTables.js"></script>

    <script src="//cdn.ckeditor.com/4.5.9/full/ckeditor.js"></script>
    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>


<body>
    

    <header>
        <div class="topbar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <nav class="navbar navbar-inverse  ">
           
                        <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="topbar_head">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand <?php if($this->uri->segment(1)=='home') { echo 'active';}?>" target="_blank" href="<?php echo site_url('home/index'); ?>">BK SMART PHONE</a>
                                </div>
                            </div>

    
                            <div class="topbar_body">
                                <div  class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                    <ul class="nav navbar-nav  navbar-left">

                                        <li class="<?php if($this->uri->segment(2)=='phone') { echo 'active';}?>"><a href="<?php echo site_url('admin/phone/phone/index'); ?>" >ĐIỆN THOẠI</a></li>           
                                        <li class="<?php if($this->uri->segment(2)=='accessory') { echo 'active';}?>"><a  href="<?php echo site_url('admin/accessory/accessory_category'); ?>" >PHỤ KIỆN</a></li> 
                                        <li class="<?php if($this->uri->segment(2)=='technology_infor') { echo 'active';}?>"><a href="<?php echo site_url('admin/technology_infor/technology_infor_category'); ?>" >CÔNG NGHỆ</a></li> 
                                        <li class="<?php if($this->uri->segment(2)=='user') { echo 'active';}?>"><a href="<?php echo site_url('admin/user/user_register'); ?>" >NGƯỜI SỬ DỤNG</a></li> 
                                        <li class="<?php if($this->uri->segment(2)=='promotion') { echo 'active';}?>"><a  href="<?php echo site_url('admin/promotion/phone_promotion'); ?>" >KHUYÊN MÃI</a></li>
                                        <li class="<?php if($this->uri->segment(2)=='order') { echo 'active';}?>"><a  href="<?php echo site_url('admin/order/phone_order'); ?>" >ORDER</a></li>
                                       
                                    </ul>
                                    <ul class="nav navbar-nav navbar-right">
       
                                        <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="color:white">Administrator <span class="caret"></span></a>
                                            <ul class="dropdown-menu">
                                                
                                                    <li><a href="<?php echo site_url('register/sign_out'); ?>" >Sign Out</a></li>
                                                    <li><a href="<?php echo site_url('register/profile'); ?>" >Profile</a></li>
                                                
                                            </ul>
                                        </li>
                                    </ul>

                                </div><!--end /.navbar-collapse -->
                            </div>
            
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
   
        