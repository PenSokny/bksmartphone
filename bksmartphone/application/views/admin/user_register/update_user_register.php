</br>
</br>
<div class="container">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-11">
		<h4>Chính sửa người đắng kỳ</h4>
			<form class="form-horizontal"  method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	 			
			    
			    <p>ID Khuyển truy cấp</p>
			    <div class="form-group">    
	                <div class="col-sm-10">
	                <p><?php echo form_error('permission_id'); ?></p>   

	               		<label><input type="radio" name="permission_id" value=1  <?php echo ($user_register_edit['permission_id']==1)?'checked':''; ?> />Admin</label>
	 
	                	<label><input type="radio" name="permission_id" value=2 <?php echo ($user_register_edit['permission_id']==2)?'checked':''; ?> />Member</label>
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