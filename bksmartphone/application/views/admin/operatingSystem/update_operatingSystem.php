</br>
</br>
<div class="container">
<div class="row">
	<div class="col-sm-1"></div>
<div class="col-sm-11">
		<h4>Chính sửa Hệ điều hành</h4>
			<form class="form-horizontal"  method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	 			<p> Tên Hệ điều hành</p>
	 			
	 		
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('name'); ?></p>
			            <input type="text" name="name" value="<?php echo $operating_system_edit['name'] ?>" class="form-control" id="inputEmail3" placeholder="Tên hệ điều hành"/>
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