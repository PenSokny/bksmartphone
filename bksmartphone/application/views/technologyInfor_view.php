</header>
	<div class="container">	
		
		<div class="row">
			<div class="col-sm-2 link_product">
				<span class="glyphicon glyphicon-home" aria-hidden="true"></span><a class="<?php if($this->uri->segment(2)=='') {echo "active2";} ?>" href="<?php echo site_url('technologyInfor'); ?>"> Home</a><br><hr>
				<?php foreach ($listCategory as $row) {?>
			 		<span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span>
			 		<a class="<?php if($this->uri->segment(3)==$row->id) {echo "active2";} ?>" href="<?php echo site_url('technologyInfor/get_infor_categoryId/'.$row->id); ?>"> <?php echo $row->name ?></a><br><hr>
				<?php } ?>
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm-9">
				<?php echo $contentInfor ;?>
			</div>
			<br>
		</div>

		<?php echo $this->uri->segment(5) ?>

    </div>		
</body>
</html>
