<script>

	$(document).ready(function(){



		$("#change_infor").click(function(){

 			location.href = 'http://localhost/bksmartphone/index.php/register/InputPassword';
 		});
	});

</script>


<div class="container">

	<div class="row">
		<div class="col-sm-2"></div>
		<div  style="margin-top:3%;margin-left:35%">
		<?php foreach ($user_infor as $row) { ?>
			<h3 style="color:red; text-indent: 0.5em;">Thông tin cá nhân của bạn </h3>
		</br>
			<div class="col-sm-3">
				<p>Username của bạn là       </p>
				<p>Họ tên bạn là             </p>
				<p>Email của bạn là          </p>
				<p>Giời tình của bạn là      </p>
				<p>Số điện thoại của bạn là </p>
				<p>Địa chỉ bạn đang ở là    </p>
				</br>
				
			</div>
			<div class="col-sm-3">
				<p><?php echo ':'.$row->username ?></p>
				<p><?php echo ':'.$row->fullname ?></p>
				<p><?php echo ':'.$row->email ?></p>
				<p><?php echo ($row->gender ==1)?':Nam':':Nử'; ?></p>
				<p><?php echo ':'.$row->phone_number ?></p>
				<p><?php echo ':'.$row->address ?></p>
				</br>
				<div><button type="button" id="change_infor" class="btn btn-warning" style="width:100px ;height:30px;">Thay đổi </button></div>

			</div>


		<?php } ?>
		</div>
			

		

	</div>


</div>