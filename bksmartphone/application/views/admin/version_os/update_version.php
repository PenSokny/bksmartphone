</br>
</br>
<div class="container">
<div class="row">
	<div class="col-sm-1"></div>
<div class="col-sm-11">
		<h4>Chính sửa phiên bản hệ điều hành</h4>
			<form class="form-horizontal"  method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	 			<p> Tên phiên bản hệ điều hành</p>
	 			
	 		
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('name'); ?></p>
			            <input type="text" name="name" value="<?php echo $version_os_edit['name'] ?>" class="form-control" id="inputEmail3" placeholder="Tên phiên bản hệ điều hành"/>
			        </div>
			    </div>
			    <p>ID hệ điều hành</p>
			    <div class="form-group">
			    	<div class="col-sm-8">
			    		
			    		<p><?php echo form_error('id_os'); ?></p>
			        	<select class="selectpicker" name="id_os" id="selecname">
							
							<?php foreach ($operatingSystem as $name) { ?>
							<option <?php echo ($version_os_selected['operating_system_id'] == $name->id)?'selected':''; ?> value=" <?php echo $name->id ?>"><?php echo $name->name ?></option>
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