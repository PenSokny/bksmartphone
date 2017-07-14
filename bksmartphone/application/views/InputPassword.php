

<div class="container">

	<div class="row">
		<div class="col-sm-2"></div>
		<div  style="margin-top:6%;margin-left:35%">
		
			<h3 style="color:red; text-indent: 0.5em;">Bảo mật tài khoản của bạn </h3>
		</br>
		
			<div class="col-sm-3">
				<p>Nhập mặt khẩu của bạn </p>
				
				
				
			</div>
			<div class="col-sm-5">
				<form class="form-horizontal"  method="post" action="http://localhost/bksmartphone/index.php/register/ConfirmPassword">
					<div class="form-group">

						<input type="password" name="password" value="<?php echo set_value('password'); ?>" class="form-control" id="inputEmail3" placeholder="Nhập mặt khẩu của bạn">
					</div>
					</br>
					</br>
					<div class="form-group">
						<div><button type="submit" id="change_infor" style="float:right;" class="btn btn-warning" style="width:100px ;height:30px;">Submit</button></div>
					</div>
					<div class="form-group">
						<div style="color:red;"><?php echo $error; ?></div>
					</div>
				</form>
			</div>

		
		</div>

			

		

	</div>


</div>