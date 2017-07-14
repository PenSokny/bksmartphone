</br>
</br>
<div class="container">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-11">
		<h4>Nhập xử liệu vào bảng phụ kiện </h4>
			<form class="form-horizontal"  method="post" action="http://localhost/bksmartphone/index.php/admin/accessory/accessory/insert">
	 			<p> Tên phụ kiện</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('accessory_name'); ?></p>
			            <input type="text" name="accessory_name" value="<?php echo set_value('accessory_name'); ?>" class="form-control" id="inputEmail3" placeholder="Tên phụ kiện"/>
			        </div>
			    </div>
			    <p> Giá phụ kiện</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('accessory_price'); ?></p>
			            <input type="text" name="accessory_price" value="<?php echo set_value('accessory_price'); ?>" class="form-control" id="inputEmail3" placeholder="Tên phụ kiện"/>
			        </div>
			    </div>
			     
			     <p> Trình bày dài</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('long_des'); ?></p>
			          <textarea type="text" name="long_des" class="form-control" id="long_des" placeholder="Miêu ta dài"><?php echo set_value('long_des'); ?>
			        </textarea>
			            
			        </div>
			    </div>
			    <p> Trình bày ngắn</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('short_des'); ?></p>
			          <textarea type="text" name="short_des" class="form-control" id="short_des" placeholder="Miêu ta ngắn"><?php echo set_value('short_des'); ?>
			        </textarea>
			       
			        </div>
			    </div>		
			    <p>ID thể loại phụ kiện</p>
			    <div class="form-group">
			    	<div class="col-sm-8">
			    		
			    		<p><?php echo form_error('id_accessory_category'); ?></p>
			        	<select class="selectpicker" name="id_accessory_category" id="selecname">
							
							<?php foreach ($accessory_category_id as $row) { ?>
							<option value=" <?php echo $row->id ?>"><?php echo $row->name ?></option>
							<?php } ?>
						</select>
						
			        </div>
			    </div>
			    <p>ID điện thoại</p>
			    <div class="form-group">
			    	<div class="col-sm-8">
			    		
			    		<p><?php echo form_error('id_phone'); ?></p>
			        	<select class="selectpicker" name="id_phone" id="selecname">
							
							<?php foreach ($product_id as $row) { ?>
							<option value=" <?php echo $row->id ?>"><?php echo $row->name ?></option>
							<?php } ?>
						</select>
						
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
     	
</script>