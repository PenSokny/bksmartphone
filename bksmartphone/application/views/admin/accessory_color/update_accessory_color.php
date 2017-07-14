</br>
</br>
<div class="container">
<div class="row">
	<div class="col-sm-1"></div>
<div class="col-sm-11">
		<h4>Chính sửa màu phụ kiện</h4>
			<form class="form-horizontal"  method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	 			<p> ID phụ kiện</p>
	 			<div class="form-group">
			    	<div class="col-sm-8">
			    		
			    		<p><?php echo form_error('accessory_id'); ?></p>
			        	<select class="selectpicker" name="accessory_id" id="selecname">
							
							<?php foreach ($accessory_name as $row) { ?>
							<option  <?php echo ($accessory_selected['accessories_id'] == $row->id)?'selected':''; ?>  value="<?php echo $row->id ?>"><?php echo $row->name ?></option>
							<?php } ?>
						</select>
						
			        </div>
			    </div>
	 			<p>ID màu</p>
	 			<div class="form-group">
			    	<div class="col-sm-8">
			    		
			    		<p><?php echo form_error('color_id'); ?></p>
			        	<select class="selectpicker" name="color_id" id="selecname">
							
							<?php foreach ($color as $row) { ?>
							<option <?php echo ($color_selected['color_id'] == $row->id)?'selected':''; ?>  value="<?php echo $row->id ?>"><?php echo $row->name ?></option>
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