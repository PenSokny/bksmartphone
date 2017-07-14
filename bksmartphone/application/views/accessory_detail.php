
<script>


	$(document).ready(function(){



		$("#buy_accessory").click(function(){

 			var id = parseInt($("#id_accessory").text());
 			location.href = 'http://localhost/bksmartphone/index.php/accessory/order/' +id;

 		});


	});


</script>

<div class="container">

	
	<?php foreach ($name_accessory_category ->result_array() as $row) { ?>
		<p>
			<a href="<?php echo site_url('home/index'); ?>">Trang chủ</a> › 
			<a href="<?php echo site_url('phone/index'); ?>">Phụ Kiện</a> › 
			<a href="<?php echo site_url('phone/brand/'.$row['id']); ?>"><?php echo $row['name'] ?></a>›
			<?php  foreach ($accessory->result_array() as $row) { ?>		 
			<span class="name_product"> <?php echo $row['name']; ?></span>
			<div hidden id="id_accessory"><?php echo $row['id'] ?></div>
			<?php } ?>
		</p>
	<?php } ?>
	
	<div class="row">

		<div class="col-sm-8">
			
       		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        				<?php $count = 1 ?>	
      
            		<div class="carousel-inner" role="listbox">
            			<?php foreach ($image_accessory_normal->result() as $image_accessory) { ?>
            			<?php if($count==1): ?>
            				<div class="item active">
            					<img src="<?php echo base_url(); ?>assets/upload_image/accessories/<?php echo $image_accessory->img; ?>" alt="Sony">
                      		
                			</div>
                		<?php else: ?>
                			<div class="item">
                      		<img src="<?php echo base_url(); ?>assets/upload_image/accessories/<?php echo $image_accessory->img; ?>" alt="Sony">
                      		
                		</div>
            			<?php endif; ?>

                 		
                		<?php $count++; ?>
                		<?php } ?>
           			</div>

        			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
           				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            			<span class="sr-only">Previous</span>
        			</a>
        			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            			<span class="sr-only">Next</span>
        			</a>
       			</div>

       		<br/>
       		<br/>
       		<!-- start long des -->

       		<?php foreach ($accessory->result() as $row) { ?>

       		<p> <?php echo $row->long_des ?> </p>

       		<?php } ?>

       		<!-- end long des -->

       		<!-- start comment -->

       		<?php $this->load->view('comment') ?>
       		<!-- end comment -->

		</div>

		<div class="col-sm-4">
			
			<h4>
	<?php  foreach ($accessory->result_array() as $row) { ?>		 
				<span class="name_product"> <?php echo $row['name']; ?></span>
				
			</h4>
			<div>
				<?php if($row['promotion_percent'] > 0){?>
					<p class="price_product" style="text-decoration: line-through" class="old_price">
                        <span><?php echo number_format($row['price'], 0, '.', '.'); ?></span>₫
                    </p>
                    <div class="price_product"> <span><?php echo number_format(($row['price'] - ($row['price'] * $row['promotion_percent']/100)), 0, '.', '.'); ?></span>₫ </div>

				<?php }else{ ?>

					<div class="price">
                        <p  class="old_price price_product">
                        	<span >
                        		<?php echo number_format($row['price'], 0, '.', '.'); ?>
                        	</span>₫
                        </p> 
                        <p hidden class="new_price">
                        	<span>
                        		<?php echo number_format(($row['price'] - ($row['price'] * $row['promotion_percent']/100)), 0, '.', '.'); ?>
                        	</span>₫
                        </p>
                    </div>

				<?php } ?>

			</div>

			<hr>

			<p> <?php echo $row['short_des'] ?> </p>
			<button type="button" id="buy_accessory" class="btn btn-warning" style="width:320px ;height:50px;">MUA NGAY</button>
			<hr>
		<?php foreach ($name_accessory_category ->result_array() as $row) { ?>
			<h4 class="name_accessory">   

				<p>Xem phụ kiện khác</p>

			</h4>
			<?php foreach ($other_accessory->result() as $row) { ?>
			<?php   $data  = $this->model->get_logoaccessory_image($row->id)->row_array() ?>
			
				<a href="<?php echo site_url('accessory/accessory_detail/'.$row->id); ?>">
					<p class="accessory_image"><img class='img-responsive'  align="left" src=" <?php echo base_url(); ?>assets/upload_image/accessories/<?php echo $data['img']; ?>"/></p>
					<p class="name_product name_accessory"><?php echo $row->name ?></p>

						<?php if($row->promotion_percent > 0){?>

									<p class="price_product accessory_style" style="text-decoration: line-through" class="old_price">
		                        	<span><?php echo number_format($row->price, 0, '.', '.'); ?></span>₫
		                    		</p>
		                   			<div class="price_product accessory_style"> <span><?php echo number_format(($row->price - ($row->price * $row->promotion_percent/100)), 0, '.', '.'); ?></span>₫ </div>

						<?php }else{ ?>

									<p  class="old_price price_product accessory_style">
                        				<span>
                        					<?php echo number_format($row->price, 0, '.', '.'); ?>
                        				</span>₫
                        			</p> 
						<?php } ?>
				</a>
			<?php } ?>
		<?php } ?>

	<?php } ?>

		</div>
	</div>
	

		
	
</div>
