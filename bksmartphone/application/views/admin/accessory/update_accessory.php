</br>
</br>
<div class="container">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-11">
		<h4>Chính sửa  phụ kiện</h4>
			<form class="form-horizontal"  method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	 			<p> Tên phụ kiện</p> 		
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('accessory_name'); ?></p>
			            <input type="text" name="accessory_name" value="<?php echo $accessory_edit['name'] ?>" class="form-control" id="inputEmail3" placeholder="Tên  phụ kiện"/>
			        </div>
			    </div>
			    <p> Giá phụ kiện</p> 		
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('accessory_price'); ?></p>
			            <input type="text" name="accessory_price" value="<?php echo $accessory_edit['price'] ?>" class="form-control" id="inputEmail3" placeholder="Tên  phụ kiện"/>
			        </div>
			    </div>
			    <p> Trình bày dài</p> 		
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('long_des'); ?></p>
			           <textarea type="text" name="long_des" class="form-control" id="long_des" placeholder="Miêu ta dài"><?php echo $accessory_edit['long_des'] ; ?>
			        </textarea>
			            
			        </div>
			    </div>
			    <p> Trình bày ngắn</p> 		
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('short_des'); ?></p>
			          <textarea type="text" name="short_des" class="form-control" id="short_des" placeholder="Miêu ta ngắn"><?php echo $accessory_edit['short_des']; ?>
			        </textarea>
			       
			        </div>
			    </div>
			    <p>ID thể loại phụ kiện</p>
			    <div class="form-group">
			    	<div class="col-sm-8">
			    		
			    		<p><?php echo form_error('accessory_category_id'); ?></p>
			        	<select class="selectpicker" name="accessory_category_id" id="selecname">
							
							<?php foreach ($accessory_category_id as $name) { ?>
							<option <?php echo ($accessory_category_id_edit['accessories_category_id'] == $name->id)?'selected':''; ?> value=" <?php echo $name->id ?>"><?php echo $name->name ?></option>
							<?php } ?>
						</select>
						
			        </div>
			    </div>
			    <p>ID điện thoại</p>
			    <div class="form-group">
			    	<div class="col-sm-8">
			    		
			    		<p><?php echo form_error('id_phone'); ?></p>
			        	<select class="selectpicker" name="id_phone" id="selecname">
							
							<?php foreach ($product_id as $name) { ?>
							<option <?php echo ($phone_id_edit['product_id'] == $name->id)?'selected':''; ?> value=" <?php echo $name->id ?>"><?php echo $name->name ?></option>
							<?php } ?>
						</select>
						
			        </div>
			    </div>
			   
			    <div  class="form-group">
      				<div class="col-sm-8"> 
          				<button type="submit" name="submit" id="order" class="btn btn-warning" style="width:100px ;height:30px;">Update</button>
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