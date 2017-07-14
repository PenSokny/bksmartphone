
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
<style>
  table, th, td 
  {
    border: 1px solid black;
    border-collapse: collapse;
  }
  th, td 
  {
    padding: 5px;
  }
</style>
 <script >

 $(document).ready(function(){


      Number.prototype.format = function(n, x, s, c) 
      {
        var re = '\\d(?=(\\d{' + (x || 3) + '})+' + (n > 0 ? '\\D' : '$') + ')',
        num = this.toFixed(Math.max(0, ~~n));

        return (c ? num.replace('.', c) : num).replace(new RegExp(re, 'g'), '$&' + (s || ','));
      };

      var phukien =  $('.tongtien_phukien');
      var sum = 0;
      phukien.each(function(){
        sum += parseInt($(this).text());
      });
      $('#tongtien').text(' '+sum.format(0,3,'.','.')+'₫');
    });

 </script>

<body>
<div class="container page_order ">

    <h3 id="dathang">Đặt Hàng</h3>
    <div id="border">
    <br/>
    
    <div class="row">
      <div class="col-sm-1"></div>
      <div class="col-sm-5">
        <b>Thông Tin  sản phẩm bạn muốn đặt hàng</b>
        <?php foreach ($infor->result() as $row) { ?>

          
          <?php if($this->uri->segment(1) == 'phone'){?>
          <?php foreach ($image_main as $row_img) { ?>
                <a href="<?php echo site_url('phone/phone_detail/'.$row->id); ?>"><img class='img-responsive' id="image_order" src="<?php echo base_url(); ?>assets/upload_image/phone/<?php echo $row_img->img; ?>"/></a></br></br>
                <a id="name_order" href="<?php echo site_url('phone/phone_detail/'.$row->id); ?>"><b> <?php echo $row->name ?></b> </a></br>
          <?php } ?>
          <?php }else if($this->uri->segment(1) == 'accessory'){ ?>
           <?php foreach ($imageaccessory_logo as $row_img) { ?>
                <a href="<?php echo site_url('accessory/accessory_detail/'.$row->id); ?>"><img class='img-responsive' id="image_order" src="<?php echo base_url(); ?>assets/upload_image/accessories/<?php echo $row_img->img; ?>"/></a></br></br>
                <a id="name_order" href="<?php echo site_url('accessory/accessory_detail/'.$row->id); ?>"><b> <?php echo $row->name ?></b> </a></br>
          <?php } ?>
          <?php } ?>
          




          <?php if($row->promotion_percent == 0){ ?>
              <b id="price_order"><?php echo number_format($row->price, 0, '.', '.'); ?>₫</b>
          <?php }else if($row->promotion_percent > 0){ ?>

             
              <b id="price_order"><?php echo number_format(($row->price - ($row->price * $row->promotion_percent/100)), 0, '.', '.'); ?>₫</b>
          <?php } ?>

         <!--  <?php if($this->uri->segment(1) == 'phone'){?>

          <div>Quà khuyến mãi</div>
          <div><?php echo $row->promotion_gift ?> </div> -->

          <?php } ?>
          
              <?php if($row->promotion_percent == 0){ ?>
                  <div hidden class="tongtien_phukien"> <?php echo $row->price  ?> </div>
              <?php }else if($row->promotion_percent > 0){ ?>
                  <div hidden class="tongtien_phukien"> <?php echo $row->price - ($row->price * $row->promotion_percent/100)  ?> </div>
              <?php } ?>

        <?php } ?>

        <?php if($this->uri->segment(1) == 'phone'){?>
        <!-- <div  id = "accessory_order"> -->
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
                  <div hidden class="tongtien_phukien"><?php echo $data[0]->price  ?></div>
             
              <?php } ?>

         <?php } ?>
              <div>
                  <b>Tổng tiền</b> : <span class="price_product" id="tongtien"></span>
              </div>
        
       <!--  </div> -->

       

      </div>
      <div class="col-sm-6">
      <?php if($this->session->userdata('username') =='') { ?>
      <b>1.Thông Tin Người Mua </b></p>
    
    <!-- <form class="form-horizontal"  method="post" action="<?php echo $_SERVER['PHP_SELF'].'?list_accessory='.$list_accessorys; ?>"> -->
    <?php foreach ($infor->result() as $row) { ?>
    <form class="form-horizontal"  method="post" action="<?=$row->id.'?'.http_build_query($_REQUEST)?>">
      <?php } ?>
    <div  class="form-group"> 
        <div class="col-sm-8">                             
            <label><input type="radio" name="gender" value=1 <?php echo (set_value('gender')==1)?'checked':''; ?> checked="checked"/>Anh</label>
            <label><input type="radio" name="gender" value=0 <?php echo (set_value('gender')==0)?'checked':''; ?>/>Chị</label>
        </div>
    </div>
    
    <div hidden class="form-group">
        <?php foreach ($infor->result() as $row) { ?>
          <div class="col-sm-8">
              <input type="text" name="id_product" value="<?php echo $row->id ?>" class="form-control" id="inputEmail3" />
          </div>
        <?php } ?>
    </div>
    <input type="hidden" name="id_receipt" value=" <?php echo $id_receipt['max(id)']+1; ?>" class="form-control" />
    <div class="form-group">
        
        <div class="col-sm-8">  
          <p><?php echo form_error('fullname'); ?></p>
            <input type="text" name="fullname" value="<?php echo set_value('fullname'); ?>" class="form-control" id="inputEmail3" placeholder="Họ tên của bạn(Bặt buộc)"/>
        </div>
    </div>
    <div class="form-group">
        
        <div class="col-sm-8">
          <p><?php echo form_error('phone_number'); ?></p>
            <input type="text" name="phone_number" value="<?php echo set_value('phone_number'); ?>" class="form-control" id="inputEmail3" placeholder="Số di động (Bặt buộc)">
        </div>
    </div>
    <div class="form-group">
        
        <div class="col-sm-8">
          <p><?php echo form_error('email'); ?></p>
          <input type="email" name="email" value="<?php echo set_value('email'); ?>" class="form-control" id="inputEmail3" placeholder="Email(để nhận thông tin đặt hàng)"/>
        </div>
    </div>

    <div class="form-group">
        
      <div class="col-sm-8">
          <p><?php echo form_error('address'); ?></p> 
          <input type="text" name="address" value="<?php echo set_value('address'); ?>" class="form-control" id="inputEmail3" placeholder="Địa chỉ(để nhận hàng)"/>
        </div>
    </div>

    <div  class="form-group">  
        
      <div class="col-sm-8"> 
          <b>2.Chọn màu sản phẩm</b></p>
          <p><?php echo form_error('color'); ?></p>
          <?php foreach ($color as $color) { ?>
          <label>
            <input type="radio" name="color"  value=<?php echo $color->id ?> class="color" 
              <?php if(set_value('color') == $color->id) echo "checked" ?>/> <?php echo $color->name ?> 
          </label>
          <?php } ?>
        </div>
    </div>
    <div  class="form-group">
      <div class="col-sm-8"> 
          <button type="submit" name="submit" id="order" class="btn btn-warning" style="width:270px ;height:50px;">ĐẶT HÀNG</button>
      </div>
    </div>
</form>
</p>

<?php }else{ ?>

      <b>1.Thông Tin Người Mua </b></p>
      <?php foreach ($infor->result() as $row) { ?>
      <form class="form-horizontal"  method="post" action="<?=$row->id.'?'.http_build_query($_REQUEST)?>">
         <?php } ?>   
          <div  class="form-group"> 
              <div class="col-sm-8">   
              <?php if($gender == 1){ ?>                          
                <label><input type="radio" name="gender" checked disabled>Anh</label>
                <label><input type="radio" name="gender" disabled >Chị</label>
                <?php } else if($gender == 0) { ?>
                <label><input type="radio" name="gender"  disabled>Anh</label>
                <label><input type="radio" name="gender" checked disabled >Chị</label>
             <?php } ?>
              </div>
          </div>
          <div hidden class="form-group">
              <?php foreach ($infor->result() as $row) { ?>
              <div class="col-sm-8">
              <input type="text" name="id_product" value="<?php echo $row->id ?>" class="form-control" id="inputEmail3" >
              </div>
              <?php } ?>
          </div>
          <input type="hidden" name="id_receipt" value=" <?php echo $id_receipt['max(id)']+1; ?>" class="form-control" />
          <div class="form-group">
        
              <div class="col-sm-8">  
              
              <input type="text" name="fullname" value=" <?php echo $fullname ?> " class="form-control" id="inputEmail3" disabled >
              </div>
          </div>
          <div class="form-group">
        
              <div class="col-sm-8">
             
              <input type="text" name="phone_number" value="<?php echo $phone_number ?> " class="form-control" id="inputEmail3" disabled>
              </div>
          </div>
          <div class="form-group">
        
              <div class="col-sm-8">
             
              <input type="email" name="email" value="<?php echo $email ?> " class="form-control" id="inputEmail3" disabled>
              </div>
          </div>

          <div class="form-group">
        
              <div class="col-sm-8">
             
              <input type="text" name="address" value="<?php echo $address ?> " class="form-control" id="inputEmail3" disabled>
              </div>
          </div>

          <div  class="form-group"> 
              <div class="col-sm-8"> 
                  <b>2.Chọn màu sản phẩm</b></p>
                  <p><?php echo form_error('color'); ?></p>
                  <?php foreach ($color as $color) { ?>
                  <label><input type="radio" name="color"  value=<?php echo $color->id ?> class="color" > <?php echo $color->name ?> </label>
                  <?php } ?>
              </div>
          </div>
          <div  class="form-group">
                <div class="col-sm-8"> 
                    <button type="submit" name="submit" id="order" class="btn btn-warning" style="width:270px ;height:50px;">ĐẶT HÀNG</button>
                </div>
          </div>
     
      </form>

<?php } ?>

      
      
    </div>
      </div>
    </div>

</div>

</body>
</html>
