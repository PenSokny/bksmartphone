</br>
</br>
<div class="container">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-11">
	<?php if($this->session->flashdata('error_image')): ?>

	<?php echo $this->session->flashdata('error_image') ?>
<?php endif; ?>
		<h4>Chính sửa  vào bảng hình ảnh điện thoại</h4>
			<form class="form-horizontal"  method="post" action="http://localhost/bksmartphone/index.php/admin/phone/image_phone/update/<?php echo $image_phone_select->id ?>" enctype="multipart/form-data">
	 			<p> Tên hình</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('name'); ?></p>
			            <input type="text" name="name" value="<?php echo $image_phone_select->name ?>" class="form-control" id="inputEmail3" placeholder="Tên hình"/>
			        </div>
			    </div>
			    <p>Hình ảnh</p>
			    <div class="form-group">                  
                    <div class="col-sm-4"><input type="file" name="image"/></div>
                </div>
                <p>ID điện thoại</p>
			    <div class="form-group">
			    	<div class="col-sm-8">
			    		
			    		<p><?php echo form_error('id_phone'); ?></p>
			        	<select class="selectpicker" name="id_phone" id="selecname">
							
							<?php foreach ($phone_id as $row) { ?>
							<option <?php echo ($image_phone_select->product_id == $row->id)?'selected':''; ?> value=" <?php echo $row->id ?>"><?php echo $row->name ?></option>
							<?php } ?>
						</select>
						
			        </div>
			    </div>
			    <p>Trạng thái hình ảnh</p>
			    <div class="form-group">    
	                <div class="col-sm-10">
	                <p><?php echo form_error('type_image'); ?></p>   

	               		<label><input type="radio" name="type_image" value=1  <?php echo ($image_phone_select->type_image == 1)?'checked':''; ?> />hình chính</label>
	                	<label><input type="radio" name="type_image" value=2 <?php echo ($image_phone_select->type_image == 2)?'checked':''; ?> />hình bình thương</label>
	                	<label><input type="radio" name="type_image" value=3 <?php echo ($image_phone_select->type_image == 3)?'checked':''; ?> />hình kỹ thuật</label>
	                </div>
               
           
        		</div>
			    <div class="row">

			    	<div class="col-md-3">
			    		<img src="<?=base_url() ?>assets/upload_image/phone/<?= $image_phone_select->img ?>" width="150px" height="150px">

			    	</div>
			    </div>
			</br>
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