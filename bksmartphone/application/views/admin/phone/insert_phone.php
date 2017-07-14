</br>
</br>
<div class="container">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-11">
		<h3>Nhập xử liệu vào bảng điện thoại</h3>
			<form class="form-horizontal"  method="post" action="http://localhost/bksmartphone/index.php/admin/phone/phone/insert">

				<p>Thể loại</p>
			    <div class="form-group">
			    	<div class="col-sm-8">
			    		
			    		<p><?php echo form_error('brand_id'); ?></p>
			        	<select class="selectpicker" name="brand_id" id="selecname">
							
							<?php foreach ($brand_id as $row) { ?>
							<option value=" <?php echo $row->id ?>"><?php echo $row->name ?></option>
							<?php } ?>
						</select>
						
			        </div>
			    </div>
			    <p>Hệ điều hành</p>
			    <div class="form-group">
			    	<div class="col-sm-8">
			    		
			    		<p><?php echo form_error('operating_system'); ?></p>
			        	<select class="selectpicker" name="operating_system" id="selecname">
							
							<?php foreach ($operating_system as $row) { ?>
							<option value=" <?php echo $row->id ?>"><?php echo $row->name ?></option>
							<?php } ?>
						</select>
						
			        </div>
			    </div>
			    <p>Độ màn hình</p>
			    <div class="form-group">
			    	<div class="col-sm-8">
			    		
			    		<p><?php echo form_error('screen_level_id'); ?></p>
			        	<select class="selectpicker" name="screen_level_id" id="selecname">
							
							<?php foreach ($screen_level_id as $row) { ?>
							<option value=" <?php echo $row->id ?>"><?php echo $row->name ?></option>
							<?php } ?>
						</select>
						
			        </div>
			    </div>
			    <p>Mức giá</p>
			    <div class="form-group">
			    	<div class="col-sm-8">
			    		
			    		<p><?php echo form_error('price_level'); ?></p>
			        	<select class="selectpicker" name="price_level" id="selecname">
							
							<?php foreach ($price_level_id as $row) { ?>
							<option value=" <?php echo $row->id ?>"><?php echo $row->name ?></option>
							<?php } ?>
						</select>
						
			        </div>
			    </div>
			    
	 			<p> Tên điện thoại</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('name'); ?></p>
			            <input type="text" name="name" value="<?php echo set_value('name'); ?>" class="form-control" id="inputEmail3" placeholder="Tên điện thoại"/>
			        </div>
			    </div>
			    <p> Giá điện thoại</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('price'); ?></p>
			            <input type="text" name="price" value="<?php echo set_value('price'); ?>" class="form-control" id="inputEmail3" placeholder="Giá điện thoại"/>
			        </div>
			    </div>
			    <p> Số lượng điện thoại</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('stored'); ?></p>
			            <input type="text" name="stored" value="<?php echo set_value('stored'); ?>" class="form-control" id="inputEmail3" placeholder="số lương điện thoại"/>
			        </div>
			    </div>
			    <p> Miêu ta ngắn</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          
			           <textarea type="text" name="short_des" class="form-control" id="short_des" placeholder="Miêu ta ngắn"><?php echo set_value('short_des'); ?>
			        </textarea>
			           
			        </div>
			    </div>
			    <p> Miêu ta dài</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8"> 

			          <p><?php echo form_error('long_des'); ?></p>
			        <textarea type="text" name="long_des" class="form-control" id="long_des" placeholder="Miêu ta dài"><?php echo set_value('long_des'); ?>
			        </textarea>
			            
			        </div>
			    </div>
			    <p> Quà khuyến mãi</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('promotion_gift'); ?></p>
			        <textarea type="text" name="promotion_gift" class="form-control" id="promotion_gift" placeholder="Quà khuyến mãi"><?php echo set_value('promotion_gift'); ?>
			        </textarea>
			           
			        </div>
			    </div>

			    <h3>Màn hình</h3>
			    <p>Công nghệ màn hình</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('screen_tech'); ?></p>
			            <input type="text" name="screen_tech" value="<?php echo set_value('screen_tech'); ?>" class="form-control" id="inputEmail3" placeholder="Công nghệ màn hình"/>
			        </div>
			    </div>
			    <p> Độ phân giải</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('screen_resolution'); ?></p>
			            <input type="text" name="screen_resolution" value="<?php echo set_value('screen_resolution'); ?>" class="form-control" id="inputEmail3" placeholder=" Độ phân giải"/>
			        </div>
			    </div>
			    <p> Màn hình rộng</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('screen_size'); ?></p>
			            <input type="text" name="screen_size" value="<?php echo set_value('screen_size'); ?>" class="form-control" id="inputEmail3" placeholder="Màn hình rộng"/>
			        </div>
			    </div>
			    <p> Cảm ứng</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('screen_induction'); ?></p>
			            <input type="text" name="screen_induction" value="<?php echo set_value('screen_induction'); ?>" class="form-control" id="inputEmail3" placeholder="Cảm ứng"/>
			        </div>
			    </div>
			    <p> Mặt kính cảm ứng</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('screen_touchglass'); ?></p>
			            <input type="text" name="screen_touchglass" value="<?php echo set_value('screen_touchglass'); ?>" class="form-control" id="inputEmail3" placeholder="Mặt kính cảm ứng"/>
			        </div>
			    </div>
			    <h3>Camera sau</h3>
			    <p> Độ phân giải</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('cameraback_resolution'); ?></p>
			            <input type="text" name="cameraback_resolution" value="<?php echo set_value('cameraback_resolution'); ?>" class="form-control" id="inputEmail3" placeholder="Độ phân giải"/>
			        </div>
			    </div>
			    <p> Quay phim</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('film_cameraback'); ?></p>
			            <input type="text" name="film_cameraback" value="<?php echo set_value('film_cameraback'); ?>" class="form-control" id="inputEmail3" placeholder="Quay phim"/>
			        </div>
			    </div>
			    <p> Đèn flash</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('flash_cameraback'); ?></p>
			            <input type="text" name="flash_cameraback" value="<?php echo set_value('flash_cameraback'); ?>" class="form-control" id="inputEmail3" placeholder=" Đèn flash"/>
			        </div>
			    </div>
			    <p> Chụp ảnh nâng cao</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('capture_cameraback'); ?></p>
			            <input type="text" name="capture_cameraback" value="<?php echo set_value('capture_cameraback'); ?>" class="form-control" id="inputEmail3" placeholder="Chụp ảnh nâng cao"/>
			        </div>
			    </div>
			    <h3>Camera trước</h3>
			    <p> Độ phân giải</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('resolution_camerafront'); ?></p>
			            <input type="text" name="resolution_camerafront" value="<?php echo set_value('resolution_camerafront'); ?>" class="form-control" id="inputEmail3" placeholder="Độ phân giải"/>
			        </div>
			    </div>
			    <p>Quay phim</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('film_camerafront'); ?></p>
			            <input type="text" name="film_camerafront" value="<?php echo set_value('film_camerafront'); ?>" class="form-control" id="inputEmail3" placeholder="Quay phim"/>
			        </div>
			    </div>
			    <p> Video call</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('videocall_camerafront'); ?></p>
			            <input type="text" name="videocall_camerafront" value="<?php echo set_value('videocall_camerafront'); ?>" class="form-control" id="inputEmail3" placeholder="Video call"/>
			        </div>
			    </div>
			    <p> Thông tin khác</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('otherinfor_camerafront'); ?></p>
			            <input type="text" name="otherinfor_camerafront" value="<?php echo set_value('otherinfor_camerafront'); ?>" class="form-control" id="inputEmail3" placeholder="Thông tin khác"/>
			        </div>
			    </div>
			    <h3>Hệ điều hành CPU</h3>
			    <p>Phiên bản </p>
			    <div class="form-group">
			    	<div class="col-sm-8">
			    		
			    		<p><?php echo form_error('version_id'); ?></p>
			        	<select class="selectpicker" name="version_id" id="selecname">
							
							<?php foreach ($version_id as $row) { ?>
							<option value=" <?php echo $row->id ?>"><?php echo $row->name ?></option>
							<?php } ?>
						</select>
						
			        </div>
			    </div>
			    <p> Chipset(hãng SX CPU)</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('chipset'); ?></p>
			            <input type="text" name="chipset" value="<?php echo set_value('chipset'); ?>" class="form-control" id="inputEmail3" placeholder="Chipset(hãng SX CPU)"/>
			        </div>
			    </div>
			    <p>Tốc độ CPU</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('cpu_speed'); ?></p>
			            <input type="text" name="cpu_speed" value="<?php echo set_value('cpu_speed'); ?>" class="form-control" id="inputEmail3" placeholder="Tốc độ CPU"/>
			        </div>
			    </div>
			    <p> Chip đồ họa(GPU)</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('gpu'); ?></p>
			            <input type="text" name="gpu" value="<?php echo set_value('gpu'); ?>" class="form-control" id="inputEmail3" placeholder="Chip đồ họa(GPU)"/>
			        </div>
			    </div>
			    <h3>Bộ nhớ & Lửu trữ</h3>
			    <p> RAM</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('ram'); ?></p>
			            <input type="text" name="ram" value="<?php echo set_value('ram'); ?>" class="form-control" id="inputEmail3" placeholder="RAM"/>
			        </div>
			    </div>
			    <p> Bộ nhớ trong ROM</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('rom'); ?></p>
			            <input type="text" name="rom" value="<?php echo set_value('rom'); ?>" class="form-control" id="inputEmail3" placeholder="Bộ nhớ trong ROM"/>
			        </div>
			    </div>
			    <p> Bộ nhớ còn lại(khả dụng)</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('remaining_memory'); ?></p>
			            <input type="text" name="remaining_memory" value="<?php echo set_value('remaining_memory'); ?>" class="form-control" id="inputEmail3" placeholder="Bộ nhớ còn lại(khả dụng)"/>
			        </div>
			    </div>
			    <p> Thẻ nhớ ngoài</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('external_memory'); ?></p>
			            <input type="text" name="external_memory" value="<?php echo set_value('external_memory'); ?>" class="form-control" id="inputEmail3" placeholder="Thẻ nhớ ngoài"/>
			        </div>
			    </div>
			    <p> Hỗ trợ thẻ tối đa</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('max_card_support'); ?></p>
			            <input type="text" name="max_card_support" value="<?php echo set_value('max_card_support'); ?>" class="form-control" id="inputEmail3" placeholder="Hỗ trợ thẻ tối đa"/>
			        </div>
			    </div>
			    <h3>Kết nối</h3>
			    <p> Băng tần 2G</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('spectrum_2g'); ?></p>
			            <input type="text" name="spectrum_2g" value="<?php echo set_value('spectrum_2g'); ?>" class="form-control" id="inputEmail3" placeholder="Băng tần 2G"/>
			        </div>
			    </div>
			    <p> Băng tần 3G</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('spectrum_3g'); ?></p>
			            <input type="text" name="spectrum_3g" value="<?php echo set_value('spectrum_3g'); ?>" class="form-control" id="inputEmail3" placeholder="Băng tần 3G"/>
			        </div>
			    </div>
			    <p> Hỗ trợ 4G</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('support_4g'); ?></p>
			            <input type="text" name="support_4g" value="<?php echo set_value('support_4g'); ?>" class="form-control" id="inputEmail3" placeholder=" Hỗ trợ 4G"/>
			        </div>
			    </div>
			    <p> Số khe sim</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('sim_slot'); ?></p>
			            <input type="text" name="sim_slot" value="<?php echo set_value('sim_slot'); ?>" class="form-control" id="inputEmail3" placeholder="Số khe sim"/>
			        </div>
			    </div>
			    <p> Loại sim</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('sim_type'); ?></p>
			            <input type="text" name="sim_type" value="<?php echo set_value('sim_type'); ?>" class="form-control" id="inputEmail3" placeholder="Loại sim"/>
			        </div>
			    </div>
			    <p> Wifi</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('wifi'); ?></p>
			            <input type="text" name="wifi" value="<?php echo set_value('wifi'); ?>" class="form-control" id="inputEmail3" placeholder="Wifi"/>
			        </div>
			    </div>
			    <p> GPS</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('gps'); ?></p>
			            <input type="text" name="gps" value="<?php echo set_value('gps'); ?>" class="form-control" id="inputEmail3" placeholder=" GPS"/>
			        </div>
			    </div>
			    <p> Bluetooth</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('bluetooth'); ?></p>
			            <input type="text" name="bluetooth" value="<?php echo set_value('bluetooth'); ?>" class="form-control" id="inputEmail3" placeholder=" Bluetooth"/>
			        </div>
			    </div>
			    <p> NFC</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('nfc'); ?></p>
			            <input type="text" name="nfc" value="<?php echo set_value('nfc'); ?>" class="form-control" id="inputEmail3" placeholder="NFC"/>
			        </div>
			    </div>
			    <p> Cồng kết nối/sạc</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('connector_charger'); ?></p>
			            <input type="text" name="connector_charger" value="<?php echo set_value('connector_charger'); ?>" class="form-control" id="inputEmail3" placeholder="Cồng kết nối/sạc"/>
			        </div>
			    </div>
			    <p> Jack tai nghe</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('handphone_jack'); ?></p>
			            <input type="text" name="handphone_jack" value="<?php echo set_value('handphone_jack'); ?>" class="form-control" id="inputEmail3" placeholder="Jack tai nghe"/>
			        </div>
			    </div>
			    <p> Kết nối khác</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('other_connect'); ?></p>
			            <input type="text" name="other_connect" value="<?php echo set_value('other_connect'); ?>" class="form-control" id="inputEmail3" placeholder="Kết nối khác"/>
			        </div>
			    </div>
			    <h3>Thiết kế & Trọng lượng</h3>
			    <p> Thiết kế</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('design'); ?></p>
			            <input type="text" name="design" value="<?php echo set_value('design'); ?>" class="form-control" id="inputEmail3" placeholder="Thiết kế"/>
			        </div>
			    </div>
			    <p> Chất liệu</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('material'); ?></p>
			            <input type="text" name="material" value="<?php echo set_value('material'); ?>" class="form-control" id="inputEmail3" placeholder="Chất liệu"/>
			        </div>
			    </div>
			    <p> Kích thước</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('sizeall'); ?></p>
			            <input type="text" name="sizeall" value="<?php echo set_value('sizeall'); ?>" class="form-control" id="inputEmail3" placeholder="Kích thước"/>
			        </div>
			    </div>
			    <p> Trọng lượng</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('weight'); ?></p>
			            <input type="text" name="weight" value="<?php echo set_value('weight'); ?>" class="form-control" id="inputEmail3" placeholder="Trọng lượng"/>
			        </div>
			    </div>
			    <h3>Thông tin pin</h3>
			    <p> Dung lượng pin</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('battery_capacity'); ?></p>
			            <input type="text" name="battery_capacity" value="<?php echo set_value('battery_capacity'); ?>" class="form-control" id="inputEmail3" placeholder="Dung lượng pin"/>
			        </div>
			    </div>
			    <p> Loại pin</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('battery_type'); ?></p>
			            <input type="text" name="battery_type" value="<?php echo set_value('battery_type'); ?>" class="form-control" id="inputEmail3" placeholder="Loại pin"/>
			        </div>
			    </div>
			    <h3>Giải trí & Ứng dụng</h3>
			    <p> Xem phim</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('playing_movie'); ?></p>
			            <input type="text" name="playing_movie" value="<?php echo set_value('playing_movie'); ?>" class="form-control" id="inputEmail3" placeholder="Xem phim"/>
			        </div>
			    </div>
			    <p> Nghe nhạc</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('playing_music'); ?></p>
			            <input type="text" name="playing_music" value="<?php echo set_value('playing_music'); ?>" class="form-control" id="inputEmail3" placeholder="Nghe nhạc"/>
			        </div>
			    </div>
			    <p> Ghi âm</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('recording'); ?></p>
			            <input type="text" name="recording" value="<?php echo set_value('recording'); ?>" class="form-control" id="inputEmail3" placeholder="Ghi âm"/>
			        </div>
			    </div>
			    <p>Radio</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('playing_radio'); ?></p>
			            <input type="text" name="playing_radio" value="<?php echo set_value('playing_radio'); ?>" class="form-control" id="inputEmail3" placeholder="Radio"/>
			        </div>
			    </div>
			    <p> Chức năng khác</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('otherinfor_playing'); ?></p>
			            <input type="text" name="otherinfor_playing" value="<?php echo set_value('otherinfor_playing'); ?>" class="form-control" id="inputEmail3" placeholder="Chức năng khác"/>
			        </div>
			    </div>
			    <div  class="form-group">
      				<div class="col-sm-8"> 
          				<button type="submit" name="submit" id="order" class="btn btn-warning" style="width:100px ;height:30px;">Submit</button>
      				</div>
    			</div>
			    
	
			</form>
			<p> <?php echo $error ?></p>
	</div>
</div>
</div>
<script type="text/javascript">
 		CKEDITOR.replace( 'short_des' );
    	CKEDITOR.replace( 'long_des' );
     	CKEDITOR.replace( 'promotion_gift' );
</script>