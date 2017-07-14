
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
    <meta charset=UTF-8 />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="">
  <title>Welcome to BK Smart Phone</title>
  <link href="<?php  echo base_url(); ?>assets/css/bootstrap.min.css" rel="stylesheet">
  <link  type="text/css" href="<?php  echo base_url(); ?>assets/css/custome.css" rel="stylesheet">
  <script src="http://code.jquery.com/jquery-2.0.3.min.js"></script><!-- if have this we dont need this  this is on the top just work<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>-->
  <script src="<?php  echo base_url(); ?>assets/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
  <script src="<?php  echo base_url(); ?>assets/js/jquery.js"></script>

</head>
<body style="background-color:black">
  <!-- <div class="sign_in"> -->
<div class="container-fluit sign_in">
<div class="row">
	<div class="col-sm-3"></div>
	<div class="col-sm-6">

			<h2 style="text-indent: 3em;" >SIGN IN TO BK SMART PHONE</h2></p></p>
			<form class="form-horizontal" action="http://localhost/bksmartphone/index.php/register/sign_in" method="post">
  			<div class="form-group">
          <p style="margin-left:50px"><?php echo form_error('email'); ?></p>
    				<label for="inputEmail3" class="col-sm-2 control-label">EMAIL_USER</label>
    			<div class="col-sm-10">
      				<input type="email" class="form-control" name="email" value="<?php echo set_value('email'); ?>" id="inputEmail3" placeholder="Email">
    			</div>
 			</div>
  			<div class="form-group">
           <p style="margin-left:50px"><?php echo form_error('password'); ?></p>
    			<label for="inputPassword3" class="col-sm-2 control-label">PASSWORD</label>
    		<div class="col-sm-10">
      			<input type="password" class="form-control" name="password" value="<?php echo set_value('password'); ?>" id="inputPassword3" placeholder="Password">
    		</div>
  			</div>
  			<!-- <div class="form-group">
   				<div class="col-sm-offset-2 col-sm-10">
      			<div class="checkbox">
        			<label>
          				<input type="checkbox"> Remember me
        			</label>
     			</div>
    			</div>
  			</div> -->
  			<div class="form-group">
    			<div class="col-sm-offset-2 col-sm-10">
      				<button type="submit" name="submit" class="btn btn-default">Sign in</button>
              <button type="submit" name="sign_up" class="btn btn-default">Sign up</button>
    			</div>
  			</div>
			</form>
      <div> <?php echo $error ?></div>
	</div>
</div>
</div>
<!-- </div> -->
</body>
</html>
