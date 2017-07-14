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
  <link href="<?php  echo base_url(); ?>assets/css/bootstrap.min.css" rel="stylesheet">
  <link  type="text/css" href="<?php  echo base_url(); ?>assets/css/custome.css" rel="stylesheet">
  <script src="http://code.jquery.com/jquery-2.0.3.min.js"></script><!-- if have this we dont need this  this is on the top just work<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>-->
  <script src="<?php  echo base_url(); ?>assets/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
  <script src="<?php  echo base_url(); ?>assets/js/jquery.js"></script>

</head>

<body>


  <div class="container">

    <div class="row">


      <div class="col-sm-3"></div>
      <div class="col-sm-6  success_order">

        <h4>Đặt mua thành công</h4>




      </div>
      <div class="col-sm-3">

      </br>

        <a href="<?php echo site_url('home/index'); ?>"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Về lại trang chủ</a>

      </div>




    </div>
    <div class="row">

      <div class="col-sm-2"></div>
      <div class="col-sm-10">

        <img src="<?php  echo base_url(); ?>assets/image/2.jpg" alt="IPhone"/><br/><br/>
        <i>
          Cảm ơn bạn <b><?php echo  $user_order_infor['fullname']; ?></b>
          đã cho chúng tôi cơ hội được phục vụ.
        </i>
        <p><b>Thông tin đặt hàng</b></p>
        <p>1.Sản phẩm 
          <?php foreach ($infor->result() as $row) { ?>
            <a href="<?php echo site_url('phone/phone_detail/'.$row->id); ?>"><?php echo $row->name.' '; ?></a>

          <?php } ?>
          <?php foreach ($color_order as $row) {
            echo 'màu'.' '.$row->name;
          } ?>
          <?php foreach ($infor->result() as $row) { ?>
          <span class="price_product"><?php echo ','.' '.number_format($row->price, 0, '.', '.').'₫'; ?></span>
          <?php } ?>

          <?php if($this->uri->segment(1) == 'phone') {?>
                <?php if(count($list_accessory) > 0 ) { ?>  
                      <b>mua cùng với </b>
                <?php } ?>
                <?php foreach ($list_accessory as $row) { 
                      $sql_accessory_order = "select * from accessories_color, accessories where accessories_color.accessories_id = accessories.id and accessories_color.id =".$row;
                      $data  = $this->model->get_accessory_order($sql_accessory_order) ;
                    ?>

                    <div>
                          <?php echo '-'.' '.$data[0]->name.' '.'giá'.' '?>
                          <b id="price_order"><?php echo  number_format($data[0]->price, 0, '.', '.').'₫' ?></b>
                    </div>
                <?php } ?>
          <?php } ?>
        </p>
        <p>2. Chúng tôi sẽ đưa hàng cho quý khách tại:<?php echo $user_order_infor['address'];?> </p>
        <p>3. Thời gian nhận hàng dự kiến: Trước 22h:00 giờ ngày <?php echo $time_delay; ?></p>
        <p>4. Thanh toán tiền mặt khi nhận hàng</p>
        <p>Nhân viên sẽ liên hệ lại với bạn <b><?php echo  $user_order_infor['fullname']; ?></b> để xác nhận thông tin đặt hàng trước 17h:00 giờ ngày <?php echo $time_delay; ?>.
        </p>

        <p>Khi cần trợ giúp vui lòng gọi 1800.1060 hoặc (08)38.102.102 (7h30 - 22h00). Chúc bạn <b><?php echo  $user_order_infor['fullname']; ?></b> một ngày tốt lành.
        </p> 



      </div>




    </div>




  </div>




</body>
</html>