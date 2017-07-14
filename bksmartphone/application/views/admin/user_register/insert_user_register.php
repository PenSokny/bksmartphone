</br>
</br>
<div class="container">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-11">
		<h4>Nhập xử liệu vào bảng người đăng kỳ</h4>
			<form class="form-horizontal"  method="post" action="http://localhost/bksmartphone/index.php/admin/user/user_register/insert">
	 			<p>User Name</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('username'); ?></p>
			            <input type="text" name="username" value="<?php echo set_value('username'); ?>" class="form-control" id="inputEmail3" placeholder="Username"/>
			        </div>
			    </div>
			    <p>Mặt Khẩu</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">
			       
			          <p><?php echo form_error('password'); ?></p>
			            <input type="password" name="password" value="<?php echo set_value('password'); ?>" class="form-control" id="inputEmail3" placeholder="Mặt khẩu"/>
			        </div>
			    </div>
			    <p>ID Khuyển truy cấp</p>
			    <div class="form-group">    
	                <div class="col-sm-10">
	                <p><?php echo form_error('permission_id'); ?></p>   

	               		<label><input type="radio" name="permission_id" value=1  <?php echo (set_value('permission_id')==1)?'checked':''; ?> />Admin</label>
	 
	                	<label><input type="radio" name="permission_id" value=2 <?php echo (set_value('permission_id')==2)?'checked':''; ?> />Member</label>
	                </div>
               
           
        		</div>

			    <p>Họ tên</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			        	 
			          <p><?php echo form_error('fullname'); ?></p>
			            <input type="text" name="fullname" value="<?php echo set_value('fullname'); ?>" class="form-control" id="inputEmail3" placeholder="Họ tên"/>
			        </div>
			    </div>
			    <p>Email</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">
			          
			          <p><?php echo form_error('email'); ?></p>
			            <input type="email" name="email" value="<?php echo set_value('email'); ?>" class="form-control" id="inputEmail3" placeholder="Email"/>
			        </div>
			    </div>
			    <p>Giới tính</p>
			    <div class="form-group">    
	                <div class="col-sm-10">
	                <p><?php echo form_error('gender'); ?></p>   

	               		<label><input type="radio" name="gender" value=1  <?php echo (set_value('gender')==1)?'checked':''; ?> />Nam</label>
	 
	                	<label><input type="radio" name="gender" value=0 <?php echo (set_value('gender')==0)?'checked':''; ?> />Nử</label>
	                </div>
               
           
        		</div>
			    <p>Số điện thoại</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('phonenumber'); ?></p>
			            <input type="text" name="phonenumber" value="<?php echo set_value('phonenumber'); ?>" class="form-control" id="inputEmail3" placeholder="Số điện thoại"/>
			        </div>
			    </div>
			     <p>Địa chỉ</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('address'); ?></p>
			            <input type="text" name="address" value="<?php echo set_value('address'); ?>" class="form-control" id="inputEmail3" placeholder="Địa chỉ"/>
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