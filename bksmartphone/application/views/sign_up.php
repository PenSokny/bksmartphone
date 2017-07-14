<div class="container sign_up">


	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">

			<h2>SIGN UP TO BK SMART PHONE</h2>
     
			<form class="form-horizontal" action="http://localhost/bksmartphone/index.php/register/sign_up" method="post">
  			<div class="form-group">
          <?php echo form_error('username'); ?>
    			<label for="inputUsername" class="col-sm-2 control-label">UserName</label>

    			<div class="col-sm-10">
              
      				<input type="text" name="username" value="<?php echo set_value('username'); ?>" class="form-control" id="inputEmail3" placeholder="User Name">
    			</div>
 			  </div>
  			<div class="form-group">
         
           <?php echo form_error('password'); ?>
    			<label for="inputPassword" class="col-sm-2 control-label">Password</label>
    			<div class="col-sm-10">
            
      				<input type="password" name="password" value="<?php echo set_value('password'); ?>" class="form-control" id="inputPassword3" placeholder="Password">
    			</div>
  			</div>
  			<div class="form-group">
           <?php echo form_error('fullname'); ?>
    			<label for="inputFullname" class="col-sm-2 control-label">FullName</label>
    			<div class="col-sm-10">
            
      				<input type="text" name="fullname" value="<?php echo set_value('fullname'); ?>" class="form-control" id="inputPassword3" placeholder="Full Name">
    			</div>
  			</div>
  			<div class="form-group">
          <?php echo form_error('email'); ?>
    			<label for="inputEmail" class="col-sm-2 control-label">Email</label>
    			<div class="col-sm-10">
             
      				<input type="email" name="email" value="<?php echo set_value('email'); ?>" class="form-control" id="inputPassword3" placeholder="Email">
    			</div>
  			</div>
  			<div class="form-group">
          <?php echo form_error('phonenumber'); ?>
    			<label for="inputPhonenumber" class="col-sm-2 control-label">PhoneNumber</label>
    			<div class="col-sm-10">
             
      				<input type="text"  name="phonenumber" value="<?php echo set_value('phonenumber'); ?>" class="form-control" id="inputPassword3" placeholder="Phone Number">
    			</div>
  			</div>
  			<div class="form-group">
          <?php echo form_error('address'); ?>
    			<label for="inputAddress" class="col-sm-2 control-label">Address</label>
    			<div class="col-sm-10">
            
      				<input type="text" name="address" value="<?php echo set_value('address'); ?>" class="form-control" id="inputPassword3" placeholder="Address">
    			</div>
  			</div>
  			<div class="form-group">
  			
                
                <label for="inputPassword3" class="col-sm-2 control-label">Gender</label>
                <div class="col-sm-10"> 

               		<label><input type="radio" name="gender" value=1  <?php echo (set_value('gender')==1)?'checked':''; ?> />Male</label>
 
                	<label><input type="radio" name="gender" value=0 <?php echo (set_value('gender')==0)?'checked':''; ?> /> Femail</label>
                </div>
               
           
        	</div>
  			<div class="form-group">
    			<div class="col-sm-offset-2 col-sm-10">
      				<button type="submit" name="submit" class="btn btn-default">Submit</button>
    			</div>
  			</div>
			</form>


      <h3 style="color:red"> <?php echo $error; ?> </h3>
     
		</div>


</div>


</body>
</html>