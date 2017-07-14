</br>
</br>
<div class="container">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-11">
		<h4>Chính sửa vào hình ảnh phụ kiện</h4>
			<form class="form-horizontal"  method="post" action="http://localhost/bksmartphone/index.php/admin/accessory/image_accessory/update/<?php echo $image_accessory_select->id ?>" enctype="multipart/form-data">
	 			<p> Tên hình ảnh</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('name'); ?></p>
			            <input type="text" name="name" value="<?php echo $image_accessory_select->name; ?>" class="form-control" id="inputEmail3" placeholder="Tên hình ảnh phụ kiện"/>
			        </div>
			    </div>
			    <p>Hình ảnh</p>
			    <div class="form-group">   
			    	<p><?php echo form_error('image'); ?></p>               
                    <div class="col-sm-4"><input type="file" name="image" value="<?= set_value('image') ?>" /></div>
                </div>
               
                <p>Trạng thái hình ảnh</p>
			    <div class="form-group">    
	                <div class="col-sm-10">
	                <p><?php echo form_error('type_image'); ?></p>   

	               		<label><input type="radio" name="type_image" value=1  <?php echo ($image_accessory_select->type_image == 1)?'checked':''; ?> />hình logo</label>
	                	<label><input type="radio" name="type_image" value=2 <?php echo ($image_accessory_select->type_image == 2)?'checked':''; ?> />hình bình thương</label>
	                	
	                </div>
               
           
        		</div>
			    <p>ID phụ kiện</p>
			    <div class="form-group">
			    	<div class="col-sm-8">
			    		
			    		<p><?php echo form_error('id_accessory'); ?></p>
			        	<select class="selectpicker" name="id_accessory" id="selecname">
							
							<?php foreach ($accessory_id as $row) { ?>
							<option <?php echo ($image_accessory_select->accessory_id == $row->id)?'selected':'' ?> value=" <?php echo $row->id ?>"><?php echo $row->name ?></option>
							<?php } ?>
						</select>
						
			        </div>
			    </div>

			    <div class="row">

			    	<div class="col-md-3">
			    		<img src="<?=base_url() ?>assets/upload_image/accessories/<?= $image_accessory_select->img ?>" width="150px" height="150px">

			    	</div>
			    </div>

			    <div  class="form-group">
      				<div class="col-sm-8"> 
          				<button type="submit" name="submit" id="submit" class="btn btn-warning" style="width:100px ;height:30px;">Submit</button>
      				</div>
    			</div>
			    
	
			</form>
			<p> <?php echo $error ?></p>
	</div>
</div>
</div>