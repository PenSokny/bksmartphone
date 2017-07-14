</br>
</br>
<div class="container">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-11">
		<h4>Nhập xử liệu vào bảng phiên bản hệ điều hành</h4>
			<form class="form-horizontal"  method="post" action="http://localhost/bksmartphone/index.php/admin/phone/version_os/insert">
	 			<p> Tên phiên bản hệ điều hành</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('name'); ?></p>
			            <input type="text" name="name" value="<?php echo set_value('name'); ?>" class="form-control" id="inputEmail3" placeholder="Tên phiên bản hệ điều hành"/>
			        </div>
			    </div>
			    <p>ID hệ điều hành</p>
			    <div class="form-group">
			    	<div class="col-sm-8">
			    		
			    		<p><?php echo form_error('operatingSystem'); ?></p>
			        	<select class="selectpicker" name="operatingSystem" id="selecname">
							
							<?php foreach ($operatingSystem as $row) { ?>
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