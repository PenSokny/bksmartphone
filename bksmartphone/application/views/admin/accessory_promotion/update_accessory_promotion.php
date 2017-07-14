</br>
</br>
<div class="container">
<div class="row">
	<div class="col-sm-1"></div>
<div class="col-sm-11">
		<h4>Chính sửa khuyên mãi của phụ kiện</h4>
			<form class="form-horizontal"  method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	 			<p> Tên phụ kiện</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('accessory_name'); ?></p>
			            <input type="text" name="accessory_name" value="<?php echo $accessory_promotion_edit['name'] ?>" class="form-control" id="inputEmail3" placeholder="Tên điện thoại"/>
			        </div>
			    </div>
			    <p> Khuyên Mãi</p>
			    <div class="form-group">
			    	
			        <div class="col-sm-8">  
			          <p><?php echo form_error('promotion'); ?></p>
			            <input type="text" name="promotion" value="<?php echo $accessory_promotion_edit['promotion_percent'] ?>" class="form-control" id="inputEmail3" placeholder="khuyên mãi"/>
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