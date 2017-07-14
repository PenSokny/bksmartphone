

<script type="text/javascript">


	$(document).ready(function(){

			$('.slider6').bxSlider
		  	({
		    	slideWidth: 260,
		    	minSlides: 2,
		    	maxSlides: 3,
		    	startSlide: 2,
		    	slideMargin: 20,
		    	slideHeight:450
		  	});



	});




</script>
<div class="container">
	<div class="row">

		<div class="col-sm-2 link_product">
			<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
			<a href="<?php echo site_url('technologyInfor'); ?>"> Home</a><br><hr>
			<?php foreach ($listCategory as $row) {?>
			 	<span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span>
			 	<a href="<?php echo site_url('technologyInfor/get_infor_categoryId/'.$row->id); ?>"> <?php echo $row->name ?></a><br><hr>
			<?php } ?>
			
		</div>
		<div class="col-sm-8 name_technologyInfor">

			<div>
				<?php foreach ($techinfor as $row) { ?>
					<p>  

						<b><?php echo $row->name ?></b>
					</p>
				
			</div>
			<div>
				<img src="<?php echo base_url(); ?>assets/upload_image/technology_infor/<?php echo $tech_image['image']; ?> " width:"900" height="450" alt="tech">
			</div>
			<div>
				<p><?php echo $row->main_description ?></p>

			</div>
			<?php } ?>	

			


			<div class="slider6">
				<?php  foreach ($other_techinfor  as $row) { ?>
				
	  				<div class="slide">
		  				<a href="<?php echo site_url('technologyInfor/technology_detail/'.$row->id); ?>">
		  					<img src="<?php echo base_url(); ?>assets/upload_image/technology_infor/<?php echo $row->image; ?> ">
		  					<p> 
		  						<?php echo $row->name ?>
		  					</p>	  						
		  				</a>  					
	  				</div>			
	  			<?php } ?>
			</div>

			<div class="row">
				
				<div class="col-sm-12">

					<?php $this->load->view('comment'); ?>

				</div>
			</div>
		

		</div>

	</div>

	
</div>



