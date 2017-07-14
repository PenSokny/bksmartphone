

<div class="container">

	<div class="row">
		<div class="col-sm-2"></div>
		<div  style="margin-top:2%;margin-left:35%">
		
			<h3 style="color:red; ">Thay đổi thông tin của bạn </h3>
		</br>
		
			
			<div class="col-sm-5">
				<div class="row">
				<form class="form-horizontal"  method="post" action="http://localhost/bksmartphone/index.php/register/Update_ChangeInfor">
					<div class="form-group">
						<div class="col-sm-10">
							<p><?php echo form_error('username'); ?></p>
							<input type="text" name="username" value="<?php echo $username ?>" class="form-control" id="inputEmail3" placeholder="Nhập tên của bạn">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<p><?php echo form_error('password'); ?></p>
							<input type="password" name="password" value="<?php echo $password; ?>" class="form-control" id="inputEmail3" placeholder="Nhập mặt khẩu của bạn">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<p><?php echo form_error('fullname'); ?></p>
							<input type="text" name="fullname" value="<?php echo $fullname; ?>" class="form-control" id="inputEmail3" placeholder="Nhập họ tên của bạn">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<p><?php echo form_error('email'); ?></p>
							<input type="email" name="email" value="<?php echo $email ?>" class="form-control" id="inputEmail3" placeholder="Nhập email của bạn">
						</div>
					</div>
					<div class="form-group">
  	
                			<div class="col-sm-10"> 
                				<p><?php echo form_error('gender'); ?></p>

               					<label><input type="radio" name="gender" value=1 <?php echo ($gender == 1)?'checked':''; ?>   />Male</label>
 
                				<label><input type="radio" name="gender" value=0  <?php echo($gender == 0)?'checked':''; ?>/> Femail</label>
                			</div>
               
           
        			</div>
					
					<div class="form-group">
						<div class="col-sm-10">
							<p><?php echo form_error('phone_number'); ?></p>
							<input type="text" name="phone_number" value="<?php echo $phone_number; ?>" class="form-control" id="inputEmail3" placeholder="Nhập số điện thoại của bạn">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<p><?php echo form_error('address'); ?></p>
							<input type="text" name="address" value="<?php echo $address; ?>" class="form-control" id="inputEmail3" placeholder="Nhập địa chỉ của bạn">
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-sm-10">
							<button type="submit" name="submit" style="float:right"  class="btn btn-warning" style="width:100px ;height:30px;">Submit</button>
						</div>
					</div>
					
				</form>
			</div>
			</div>

		
		</div>

			

		

	</div>


</div>