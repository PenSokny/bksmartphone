	<div class="row" >
		<?php foreach ($technology_infor as $row) { ?>
		<a href="<?php echo site_url('technologyInfor/technology_detail/'.$row->id); ?>">
		<div class="col-sm-3">			
			 <img src="<?php echo base_url(); ?>assets/upload_image/technology_infor/<?php echo $row->image; ?>" width:"105" height="120" alt="imageInfor"/>				
		</div>

		<div class="col-sm-8 " style="height:125px;">
			<h4 style="color:black"><strong><i><?php echo $row->name; ?></i></strong></h4>
			<p style="color:black"><?php echo mb_substr(strip_tags($row->description), 0, 100, 'UTF-8'); ?>..</p>	
		</div>
		</a>
		<?php } ?>
		<div class="pagination"><?php echo $pagination; ?></div> 

	</div>

	


