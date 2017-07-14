<script>

	$(document).ready(function(){
	$(".click_buy").attr('checked', false); 	
		
  	$('.slider6').bxSlider
  	({
    	slideWidth: 250,
    	minSlides: 3,
    	maxSlides: 4,
    	startSlide: 2,
    	slideMargin: 10,
    	slideHeight:550
  	});

  	Number.prototype.format = function(n, x, s, c) 
  	{
    	var re = '\\d(?=(\\d{' + (x || 3) + '})+' + (n > 0 ? '\\D' : '$') + ')',
    	num = this.toFixed(Math.max(0, ~~n));

   		return (c ? num.replace('.', c) : num).replace(new RegExp(re, 'g'), '$&' + (s || ','));
	};

  	if(parseInt($(".count_danhgia").text()) <= 0)
  	{


  		$('.danhgia').hide();
  	}
  	if(parseInt($(".count_accessory").text()) <= 0)
  	{

  		$('.accessory_phone').hide();
  	}
  	var value_phone = $(".all_price");
  	// var value_accessory = 0;
  	var total = $('.phone_price').data("price");
  	$('.all_price').text(' '+$('.phone_price').text()+'₫') ;
  	 var list_accessory = [];
  	
  	$(".click_buy").click(function()
  	{
  		var value_accessory = parseInt($(this).val());
  		var value_id = $(this).data("id");
  		if($(this).is(":checked"))
  		{
  			total += value_accessory;
 			if($.inArray(value_id, list_accessory) == -1) list_accessory.push(value_id);
  		}
  		else
  		{
  			total -= value_accessory;
  			list_accessory = $.grep(list_accessory, function(value) {
			  return value != value_id;
			});
  		}
  		$('.all_price').text(' '+total.format(0,3,'.','.')+'₫') ;
 		

  	});
  		
 	if(parseInt($('.other_phone_count').text()) <= 0)
 	{

 		$('.xem_them').hide();
 	}

 	$("#buy_phone").click(function(){

 		var id = parseInt($("#id_phone").text());
 		location.href = 'http://localhost/bksmartphone/index.php/phone/order/' +id;

 	});
 	$("#buy_phone_with_accessory").click(function(){

 		var id = parseInt($("#id_phone").text());
 		if(list_accessory.length > 0)
 			location.href = 'http://localhost/bksmartphone/index.php/phone/order/' +id+'?list_accessory=' + list_accessory.toString();
 		else
 			location.href = 'http://localhost/bksmartphone/index.php/phone/order/' +id;

 	});

 	
 	$('#send_comment').click(function()
 	{
			get_comment();
 	});
 		
 	
 	
  	});

	var get_comment = function()
	{
    	var id = parseInt($("#id_phone").text());
        $.ajax
        ({
           	url:"http://localhost/bksmartphone/index.php/phone/phone_detail/"+id,
            type:'GET',
        }).done(function(response)
        {
            $("#loadComment").append(response);   
            
        });
    };

	

</script>

<div class="container">

	<?php foreach ($name_brand ->result_array() as $row) { ?>
		<p>
			<a style="text-decoration:none; color:black;" href="<?php echo site_url('home/index'); ?>">Trang chủ</a> › 
			<a style="text-decoration:none; color:black;" href="<?php echo site_url('phone/index'); ?>">Điện thoại di động</a> › 
			<a  style="text-decoration:none; color:black;" href="<?php echo site_url('phone/brand/'.$row['id']); ?>"><?php echo $row['name'] ?></a>
		</p>
	<?php } ?>
	<h3>Điện thoại 
		<?php foreach ($infor->result_array() as  $infors) { ?>
			<?php echo $infors['name']; ?>
		<?php } ?> 
	</h3>
	<div hidden> <?php foreach ($infor->result_array() as $id) { ?>
		<div id="id_phone"><?php echo $id['id'] ?></div>
	<?php } ?>
	 </div>
	<div hidden class=" other_phone_count"><?php echo $other_phone_count; ?></div>
	<div class="row">
		
		<div  class="col-sm-6"></div>
		<div class="xem_them">
		<div class="col-sm-6">
		<div  class="other_phone ">
			<p>Xem thêm
			<span>
				<?php foreach ($other_phone as $row) { ?>
					<a style="text-decoration:none;color:blue;" href="<?php echo site_url('phone/phone_detail/'.$row->id); ?>"><?php echo '  '.$row->name.'    ' ?></a>
				<?php } ?>
		 	</span>
		 	</p>
		</div>
		</div>
		</div>

	</div>		
	<hr>
	<div class="row">
		<div class="col-sm-1">
		</div>
		<div class="col-sm-4">
			<?php foreach ($image_main as $row) { ?>
			
			<div class='picture'><img class='img-responsive' src="<?php echo base_url(); ?>assets/upload_image/phone/<?php echo $row->img; ?>"></div>

			<?php } ?>
		</div>
		<div class="col-sm-7">		
			
			<div class="row">
			<div class="col-sm-11">
				<?php foreach ($infor->result_array() as $row) { ?>	
					<?php if($row['promotion_percent'] == 0){ ?>
						<h3 ><span class="phone_price  price_product" data-price="<?php echo $row['price']; ?>"><?php echo number_format($row['price'], 0, '.', '.'); ?></span><span class="price_product">₫</span></h3>
					<?php }else if($row['promotion_percent'] >0){ ?>
						<h3 ><span class="phone_price  price_product" data-price="<?php echo $row['price']; ?>"><?php echo number_format(($row['price'] - ($row['price'] * $row['promotion_percent']/100)), 0, '.', '.'); ?></span><span class="price_product">₫</span></h3>
					<?php } ?>
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
 					<div class="panel panel-success">
    					<div class="panel-heading" role="tab" id="headingOne">
      						<h4 class="panel-title">
        						<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
         						Quà khuyến mãi
        						</a>
      						</h4>
    					</div>
    					<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      						<div class="panel-body">
       			 				<?php echo $row['promotion_gift'] ?>
     			 			</div>
    					</div>
  					</div>
				</div>
				<div>
					<?php echo $row['long_des']; ?>
				</div>
				<br>
				<div class="row">
					<div class="col-sm-3">
					</div>
					<div class="col-sm-4">
					<div><button type="button" id="buy_phone" class="btn btn-warning" style="width:270px ;height:50px;">MUA NGAY</button></div>
					</div>
				</div>
			<?php } ?>
			</div>
			</div>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-sm-1">
		</div>
		<div class="col-sm-7">
			<h3>Đặc điểm nổi bật của <?php foreach ($infor->result_array() as  $infors) { ?>
				<?php echo $infors['name']; ?>
			<?php } ?></h3>
			
			
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        				<?php $count = 1 ?>	
            		
        			
       
            		<div class="carousel-inner" role="listbox">
            			<?php foreach ($image_normal->result() as $image_phone) { ?>
            			<?php if($count==1): ?>
            				<div class="item active">
            					<img src="<?php echo base_url(); ?>assets/upload_image/phone/<?php echo $image_phone->img; ?>" alt="Sony">
                      		
                			</div>
                		<?php else: ?>
                			<div class="item">
                      		<img src="<?php echo base_url(); ?>assets/upload_image/phone/<?php echo $image_phone->img; ?>" alt="Sony">
                      		
                		</div>
            			<?php endif; ?>

                 		
                		<?php $count++; ?>
                		<?php } ?>
           			</div>

        			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
           				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            			<span class="sr-only">Previous</span>
        			</a>
        			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            			<span class="sr-only">Next</span>
        			</a>
       			</div>
       			
		</div>
		<div class="col-sm-4">
			<?php foreach ($infor->result_array() as $digital) { ?>
			
			<h3>Thông số kỹ thuật</h3>
			<div class="row">
				<div class="col-xs-4">
					<p>Man hinh:</p>
				</div>
				<div class="col-xs-8">
					<p> <?php echo $digital['touch_screen_tech'] ?> </p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-4">
					<p>Hệ điều hành:</p> 
				</div>
				<div class="col-xs-8">
					<p><?php echo $digital['version_id'] ?></p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-4">
					<p>Camera sau:</p>
				</div>
				<div class="col-xs-8">
					<p><?php echo $digital['resolution_cameraback'] ?></p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-4">
					<p>Camera trước:</p> 
				</div>
				<div class="col-xs-8">
					<p><?php echo $digital['resolution_camerafront'] ?></p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-4">
					<p>CPU:</p> 
				</div>
				<div class="col-xs-8">
					<p><?php echo $digital['chipset'].''.$digital['cpu_speed'] ?></p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-4">
					<p>RAM:</p> 
				</div>
				<div class="col-xs-8">
					<p><?php echo $digital['ram'] ?></p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-4">
					<p>Bộ nhớ trong:</p>
				</div>
				<div class="col-xs-8">
					<p><?php echo $digital['rom'] ?></p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-4">
					<p>Hỗ trợ thẻ nhớ:</p> 
				</div>
				<div class="col-xs-8">
					<p><?php echo $digital['external_memory'].''.$digital['max_card_support'] ?></p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-4">
					<p>Thẻ SIM:</p>
				</div>
				<div class="col-xs-8">
					<p><?php echo $digital['sim_slot'].''.$digital['sim_type'] ?></p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-4">
					<p>Kết nối:</p>
				</div>
				<div class="col-xs-8">
					<p><?php echo $digital['support_4g'] ?></p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-4">
					<p>Dung lượng pin:</p>
				</div>
				<div class="col-xs-8">
					<p><?php echo $digital['battery_capacity'] ?></p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-4">
					<p>Thiết kế:</p>
				</div>
				<div class="col-xs-8">
					<p><?php echo $digital['design'] ?></p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-4">
					<p>Chức năng đặc biệt:</p> 
				</div>
				<div class="col-xs-8">
					<p><?php echo $digital['otherinfor_playing'] ?></p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">
				<button type="button" class="btn btn-warning" style="width:200px ;height:30px;" data-toggle="modal" data-target="#modal-1">Xem cấu hình chi tiết</button>
				</div>
			</div>
			<!-- de viet code cho hien ra thong so ky thuat khi bam button -->
			<div class="modal fade" id="modal-1">
				<div class="modal-dialog ">
					<div class="modal-content">
						
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h3 class="modal-title">Thông số kỹ thuật chi tiết<?php echo $digital['name'] ?> </h3>
						</div>
						
						
						<div class="modal-body">
							<div class="container">
									<div class="row">
										<div class="col-sm-12">
											<img src="<?php echo base_url(); ?>assets/upload_image/phone/<?php echo $image_tech['img']; ?>" alt="image" style="width: 500px; height: auto;">
										</div>

									</div>
									<div class="row">
										<div class="col-sm-12">
											<h3 style="color:red;">Màn hình</h3>
										</div>
									</div>
								
									<div class="row">
										<div class="col-sm-2">
											<p>Công nghệ màn hình 
										</div>
										<div class="col-sm-3">
											<?php echo $digital['touch_screen_tech']?> </p>
										</div>
									</div>
								
									<div class="row">
										<div class="col-sm-2">
											<p>Độ phân giải 
										</div>
										<div class="col-sm-3">
											<?php echo $digital['resolution'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Màn hình rộng 
										</div>
										<div class="col-sm-3">
											<?php echo $digital['screen_size']?> </p>
										</div>
									</div>
								
									<div class="row">
										<div class="col-sm-2">
											<p>Cảm ứng
										</div>
										<div class="col-sm-3">
											<?php echo $digital['induction'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Mặt kính cảm ứng 
										</div>
										<div class="col-sm-3">
											<?php echo $digital['touch_glass'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-12">
											<h3 style="color:red;">Camera Sau</h3>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Độ phân giải 
										</div>
										<div class="col-sm-3">
											<?php echo $digital['resolution_cameraback'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Quay phim
										</div>
										<div class="col-sm-3">
											<?php echo $digital['film_cameraback'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Đèn Flash
										</div>
										<div class="col-sm-3">
											<?php echo $digital['flash_cameraback'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Chụp ảnh nâng cao
										</div>
										<div class="col-sm-3">
											<?php echo $digital['capture_cameraback'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-12">
											<h3 style="color:red;">Camera trước</h3>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Độ phân giải
										</div>
										<div class="col-sm-3">
											<?php echo $digital['resolution_camerafront'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Quay phim
										</div>
										<div class="col-sm-3">
											<?php echo $digital['film_camerafront'] ?> </p>
										</div>
									</div>
								
									<div class="row">
										<div class="col-sm-2">
											<p>Videocall
										</div>
										<div class="col-sm-3">
											<?php echo $digital['videocall_camerafront'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Thông tin khác
										</div>
										<div class="col-sm-3">
											<?php echo $digital['otherinfor_camerafront'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-12">
											<h3 style="color:red;">Hệ điều hành - CPU</h3>
										</div>
									</div>
								
									<div class="row">
										<div class="col-sm-2">
											<p>Hệ điều hành
										</div>
										<div class="col-sm-3">
											<?php echo $digital['version_id'] ?> </p>
										</div>
									</div>
								
									<div class="row">
										<div class="col-sm-2">
											<p>Chipset (hãng SX CPU)
										</div>
										<div class="col-sm-3">
											<?php echo $digital['chipset'] ?> </p>
										</div>
									</div>
								
									<div class="row">
										<div class="col-sm-2">
											<p>Tốc độ CPU
										</div>
										<div class="col-sm-3">
											<?php echo $digital['cpu_speed'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Chip đồ họa (GPU)
										</div>
										<div class="col-sm-3">
											<?php echo $digital['gpu'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-12">
											<h3 style="color:red;">Bộ nhớ & Lưu trữ</h3>
										</div>
									</div>
								
									<div class="row">
										<div class="col-sm-2">
											<p>RAM
										</div>
										<div class="col-sm-3">
											<?php echo $digital['ram'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Bộ nhớ trong (ROM)
										</div>
										<div class="col-sm-3">
											<?php echo $digital['rom'] ?> </p>
										</div>
									</div>
								
									<div class="row">
										<div class="col-sm-2">
											<p>Bộ nhớ còn lại (khả dụng)
										</div>
										<div class="col-sm-3">
											<?php echo $digital['remaining_memory'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Thẻ nhớ ngoài
										</div>
										<div class="col-sm-3">
											<?php echo $digital['external_memory'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Hỗ trợ thẻ tối đa
										</div>
										<div class="col-sm-3">
											<?php echo $digital['max_card_support'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-12">
											<h3 style="color:red;">Kết nối</h3>
										</div>
									</div>
								
									<div class="row">
										<div class="col-sm-2">
											<p>Băng tần 2G
										</div>
										<div class="col-sm-3">
											<?php echo $digital['spectrum_2g'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Băng tần 3G
										</div>
										<div class="col-sm-3">
											<?php echo $digital['spectrum_3g'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Hỗ trợ 4G
										</div>
										<div class="col-sm-3">
											<?php echo $digital['support_4g'] ?> </p>
										</div>
									</div>
								
									<div class="row">
										<div class="col-sm-2">
											<p>Số khe sim
										</div>
										<div class="col-sm-3">
											<?php echo $digital['sim_slot'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Loại Sim
										</div>
										<div class="col-sm-3">
											<?php echo $digital['sim_type'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Wifi
										</div>
										<div class="col-sm-3">
											<?php echo $digital['wifi'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>GPS
										</div>
										<div class="col-sm-3">
											<?php echo $digital['gps'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Bluetooth
										</div>
										<div class="col-sm-3">
											<?php echo $digital['bluetooth'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>NFC
										</div>
										<div class="col-sm-3">
											<?php echo $digital['nfc'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Cổng kết nối/sạc
										</div>
										<div class="col-sm-3">
											<?php echo $digital['connector_charger'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Jack tai nghe
										</div>
										<div class="col-sm-3">
											<?php echo $digital['headphone_jack'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Kết nối khác
										</div>
										<div class="col-sm-3">
											<?php echo $digital['other_connect'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-12">
											<h3 style="color:red;">Thiết kế & Trọng lượng</h3>
										</div>
									</div>
								
									<div class="row">
										<div class="col-sm-2">
											<p>Thiết kế
										</div>
										<div class="col-sm-3">
											<?php echo $digital['design'] ?> </p>
										</div>
									</div>
								
									<div class="row">
										<div class="col-sm-2">
											<p>Chất liệu
										</div>
										<div class="col-sm-3">
											<?php echo $digital['material'] ?> </p>
										</div>
									</div>
								
									<div class="row">
										<div class="col-sm-2">
											<p>Kích thước
										</div>
										<div class="col-sm-3">
											<?php echo $digital['sizeall'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Trọng lượng
										</div>
										<div class="col-sm-3">
											<?php echo $digital['weight'] ?> </p>
										</div>
									</div>
								
									<div class="row">
										<div class="col-sm-12">
											<h3 style="color:red;">Thông tin pin</h3>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Dung lượng pin
										</div>
										<div class="col-sm-3">
											<?php echo $digital['battery_capacity'] ?> </p>
										</div>
									</div>
								
									<div class="row">
										<div class="col-sm-2">
											<p>Loại pin
										</div>
										<div class="col-sm-3">
											<?php echo $digital['battery_type'] ?> </p>
										</div>
									</div>
								
									<div class="row">
										<div class="col-sm-12">
											<h3 style="color:red;">Giải trí & Ứng dụng</h3>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Xem phim
										</div>
										<div class="col-sm-3">
											<?php echo $digital['playing_movie'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Nghe nhạc
										</div>
										<div class="col-sm-3">
											<?php echo $digital['playing_music'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Ghi âm
										</div>
										<div class="col-sm-3">
											<?php echo $digital['recording'] ?> </p>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-2">
											<p>Radio
										</div>
										<div class="col-sm-3">
											<?php echo $digital['playing_radio'] ?> </p>
										</div>
									</div>

									<div class="row">
										<div class="col-sm-2">
											<p>Chức năng khác
										</div>
										<div class="col-sm-3">
											<?php echo $digital['otherinfor_playing'] ?> </p>
										</div>
									</div>


							</div>
						</div>
						

						<div class="modal-footer">
							<a href="" class="btn btn-primary" data-dissmiss="modal">close</a>
						</div>
					</div>
				</div>
			</div>
			<!-- end-->

			<?php } ?>
		</div>
	</div>
	
	<div hidden class="count_danhgia"><?php echo $danhgia_infor_count ?></div>
	<hr>
	<div class="row  danhgia">
	
		<div class="col-sm-1">
		</div>
		<div class="col-sm-11">
			<h4>Xem đánh giá đầy đủ về <?php foreach ($infor->result_array() as  $infors) { ?>
				<?php echo $infors['name']; ?>
			<?php } ?></h4>
			<div class="row">

				<?php foreach ($danhgia_infor->result_array() as $row) { ?>
				<div class="col-sm-4">
					<div class="inforofphone">
					<div class="row"  id="titletech">
					<a href="<?php echo site_url('technologyInfor/technology_detail/'.$row['id']); ?>">
						<div class="col-md-3" style="margin-right: 10px;">
							<img src="<?php echo base_url(); ?>assets/upload_image/technology_infor/<?php echo $row['image']; ?>" width:"95" height="50" alt="image">
						</div>
						<div class="col-md-7">
							<?php echo mb_substr(strip_tags($row['name']), 0, 50, 'UTF-8'); ?>..
						</div>
					</a>

					</div>
					</div>
				</div>
				<?php } ?>
			</div>
		</div>

	</div>
	
	<div hidden class="count_accessory"><?php echo $accessories_phone_count ?> </div>
	<div class=" accessory_phone">
	<div class="row">
		
		<div class="col-sm-1"></div>
		<div class="col-sm-11">
			<h4><?php echo $accessories_phone_count.' phụ kiện phù hợp với'?><?php foreach ($infor->result_array() as  $infors) { ?>
			<?php echo $infors['name']; ?>
			<?php } ?></h4>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-11">
		<div class="row">
			<?php foreach ($infor->result_array() as  $infors) { ?>
			<div class="col-sm-2">
			
			<a style="text-decoration:none; color:green;" href="<?php echo site_url('accessory/featured_accessory?phone_id='.$infors['id'].'&accessory_category_id='); ?>"><p>Xem tất cả</p></a>
			
			</div>
			<?php } ?>
			<?php foreach ($list_accessory_category->result_array() as $list) { ?>
			<div class="col-sm-3">
			<?php foreach ($infor->result_array() as  $infors) { ?>
			<a style="text-decoration:none; color:green;" href=" <?php echo site_url('accessory/featured_accessory?phone_id='.$infors['id'].'&accessory_category_id='.$list['id']); ?> "><p><?php echo $list['totalAccessories'].' '.$list['name'] ?> </p></a>
			<?php } ?>
			</div>
			<?php } ?>
		</div>
		</div>
		
	</div>
	<div class="row">
	<div class="col-sm-1"></div>
	<div class="col-sm-11">
		
	
		<div class="slider6">
			<?php  foreach ($accessories_phone->result_array() as $row) { ?>
			<?php   $data  = $this->model->get_logoaccessory_image($row['id'])->row_array() ?>
			<?php if($row['promotion_percent'] > 0 ) { ?>
  				<div class="slide"><a style="text-decoration:none; color:black" href="<?php echo site_url('accessory/accessory_detail/'.$row['id']); ?>"><img src="<?php echo base_url(); ?>assets/upload_image/accessories/<?php echo $data['img']; ?>"><p> <?php echo $row['name'] ?> </p>
  					<p style="text-decoration: line-through; color:red;"> <?php echo number_format($row['price'],0,'.','.').'₫'?></p><p><span style="color:red;" ><?php echo number_format(($row['price'] - ($row['price'] * $row['promotion_percent']/100)), 0, '.', '.'); ?></span>₫ <?php echo $row['color_accessory'] ?></p>
  					</a>
  					<input class="click_buy" type="checkbox" name="field" data-id="<?php echo $row['accessories_color_id'] ?>" value="<?php echo $row['price'] - ($row['price'] * $row['promotion_percent']/100); ?> ">Mua phụ kiện này<p></div>
  			<?php }else{ ?>
  		<div class="slide"><a style="text-decoration:none;  color:black;" href="<?php echo site_url('accessory/accessory_detail/'.$row['id']); ?>"><img src="<?php echo base_url(); ?>assets/upload_image/accessories/<?php echo $data['img']; ?>"><p> <?php echo $row['name'] ?> </p><p><span style="color:red;"><?php echo number_format($row['price'],0,'.','.')?></span>₫ <?php echo $row['color_accessory'] ?></p>
  					</a>
  					<input class="click_buy" type="checkbox" name="field" data-id="<?php echo $row['accessories_color_id'] ?>" value="<?php echo $row['price'];?>">Mua phụ kiện này</div>
  			<?php } ?>	
  			<?php } ?>
		</div>

		
	</div>
		

	</div>
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-9">
			<div class="row">
				<div class="col-sm-4">
					<h3>Tổng tiền :<span class="all_price  price_product"></span></h3>
				</div>
				<div class="col-sm-7">
					<div><button type="button" id="buy_phone_with_accessory" class="btn btn-warning" style="width:270px ;height:50px;">MUA NGAY</button></div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="comment_phone">


	<div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-7">
		

				<?php $this->load->view('comment') ?>
  			
  					
  		
		</div>
		<div class="col-sm-4">

			<h5><b>Tin Mới</b></h5>
			<div class="row">

				
				<?php foreach ($all_infor_phone->result_array() as $row) { ?>
				<div class="inforofphone">
				<a href="<?php echo site_url('technologyInfor/technology_detail/'.$row['id']); ?>">
						<div class="col-sm-3">
				 		<img src="<?php echo base_url(); ?>assets/upload_image/technology_infor/<?php echo $row['image']; ?>" width:"105" height="50" alt="image" style="display:block"/>
				 		</div>
				 		<div class="col-sm-9">
						<div> <?php echo mb_substr(strip_tags($row['name']), 0, 100, 'UTF-8'); ?>..</div>
						</div>
				</a>
				</div>
				<?php } ?>
				


			</div>

		</div>
	</div>
</div>




</div>