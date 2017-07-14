<br>
<br>


		<div class="lastbar">
				<div class="container">
					<div class="row">
						<div class="col-sm-8">
						 	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        					<!-- Indicators -->
            					<ol class="carousel-indicators">
               						 <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
               						 <li data-target="#carousel-example-generic" data-slide-to="1"></li>
              						 <li data-target="#carousel-example-generic" data-slide-to="2"></li>
              						 <li data-target="#carousel-example-generic" data-slide-to="3"></li>
              						 <li data-target="#carousel-example-generic" data-slide-to="4"></li>
           						 </ol>

        <!-- Wrapper for slides -->
            					<div class="carousel-inner" role="listbox">
                 					<div class="item active">
                      					<img src="<?php  echo base_url(); ?>assets/image/1.jpg" alt="Sony">
                      					<div class="carousel-caption">
					                      ...
					                    </div>
                					</div>
                  				<div class="item">
                      				<img src="<?php  echo base_url(); ?>assets/image/2.jpg" alt="IPhone">
                     				<div class="carousel-caption">
                      				...
                     				</div>
                  				</div>
                  				<div class="item">
                      				<img src="<?php  echo base_url(); ?>assets/image/3.jpg" alt="IPhone">
                      				<div class="carousel-caption">
                      				...
                      				</div>
                  				</div>
                  				<div class="item">
                      				<img src="<?php  echo base_url(); ?>assets/image/4.jpg" alt="IPhone">
                      				<div class="carousel-caption">
                      				...
                      				</div>
                  				</div>
                 				<div class="item">
                      				<img src="<?php  echo base_url(); ?>assets/image/5.jpg" alt="IPhone">
                      				<div class="carousel-caption">
                     				 ...
                      				</div>
                  				</div>
            
    
            					</div>

        						<!-- Controls -->
        						<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
           				 			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            						<span class="sr-only">Previous</span>
        						</a>
        						<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            						<span class="sr-only">Next</span>
        						</a>
       						</div>
						</div>
            <h4 style="color:blue">Tin mới nhất</h4>
						<div class="col-sm-4  tinmoi">
							
							<div class="row">

                
                <?php foreach ($all_infor_phone->result_array() as $row) { ?>
                    <div class="inforofphone">

                        <a href="<?php echo site_url('technologyInfor/technology_detail/'.$row['id']); ?>">
                            <div class="col-sm-3">
                            <img src="<?php echo base_url(); ?>assets/upload_image/technology_infor/<?php echo $row['image']; ?>" width:"75" height="50" alt="image" style="display:block">
                            </div>
                            <div class="col-sm-9">
                            <div><?php echo mb_substr(strip_tags($row['name']), 0, 100, 'UTF-8'); ?>..</div>
                            </div>
                        </a>
                    </div>
                <?php } ?>



              </div>
						
						</div>
					</div>
				</div>
		</div>

		
     
	</header>


    <section class="content" id="style_home">
    <div class="container title_product">

    <h3><a  href="<?php echo site_url('phone/brand/2'); ?>">IPhone</a></h3>
    <hr>
    <div class ="row">

    <?php foreach ( $namePriceIphone  as $row) { ?>

    <?php   $data  = $this->model->get_logo_image($row->id)->row_array() ?>
    <a class="name_product" href="<?php echo site_url('phone/phone_detail/'.$row->id); ?>">
      <div class="col-sm-2">
        
      
        <img class='img-responsive' src="<?php echo base_url(); ?>assets/upload_image/phone/<?php echo $data['img']; ?> " alt="image"/>
         
        
        <p class="name_product"><?php echo $row->name?></p>
        <p><span class="price_product"><?php echo number_format($row->price, 0, '.', '.'); ?>₫</span></p>
      </div>

    </a>
  
    
    <?php }?>
    </div>

    <h3><a  href="<?php echo site_url('phone/brand/1'); ?>">Sumsung</a></h3>
    <hr>
    <div class ="row">

    <?php foreach ( $namePriceSumsung  as $row) { ?>

    <?php   $data  = $this->model->get_logo_image($row->id)->row_array() ?>
    <a class="name_product" href="<?php echo site_url('phone/phone_detail/'.$row->id); ?>">
      <div class="col-sm-2">
        
     
        <img class='img-responsive' src="<?php echo base_url(); ?>assets/upload_image/phone/<?php echo $data['img']; ?> " alt="image"/>
      
        
        <p class="name_product"><?php echo $row->name?></p>
        <p class="name_product"><span class="price_product"><?php echo number_format($row->price, 0, '.', '.'); ?>₫</span></p>
      </div>

    </a>
  
    
    <?php }?>
    </div>

    <!-- <h3><a  href="<?php echo site_url('phone/brand/3'); ?>">Nokia</a></h3>
    <hr>
    <div class ="row">

    <?php foreach ( $namePriceNokia  as $row) { ?>

   <?php   $data  = $this->model->get_logo_image($row->id)->row_array() ?>
    <a href="<?php echo site_url('phone/phone_detail/'.$row->id); ?>">
      <div class="col-sm-2">
        
      
        <img class='img-responsive' src="<?php echo base_url(); ?>assets/upload_image/phone/<?php echo $data['img']; ?> " alt="image"/>
      
        
        <p class="name_product"><?php echo $row->name?></p>
        <p><span class="price_product"><?php echo number_format($row->price, 0, '.', '.'); ?>₫</span></p>
      </div>

    </a>
  
    
    <?php }?>
    </div> -->


    <!-- <h3><a  href="<?php echo site_url('phone/brand/4'); ?>">Sony</a></h3>
    <hr>
    <div class ="row">

    <?php foreach ( $namePriceSony  as $row) { ?>

     <?php   $data  = $this->model->get_logo_image($row->id)->row_array() ?>
    <a href="<?php echo site_url('phone/phone_detail/'.$row->id); ?>">
      <div class="col-sm-2">
        
      
          <img class='img-responsive' src="<?php echo base_url(); ?>assets/upload_image/phone/<?php echo $data['img']; ?> " alt="image"/>
        
        
        <p class="name_product"><?php echo $row->name?></p>
        <p><span class="price_product"><?php echo number_format($row->price, 0, '.', '.'); ?>₫</span></p>
      </div>

    </a>
  
    
    <?php }?>
    </div> -->

    <!--  <h3><a  href="<?php echo site_url('phone/brand/20'); ?>">HTC</a></h3>
    <hr>
    <div class ="row">

    <?php foreach ( $namePriceHtc  as $row) { ?>

     <?php   $data  = $this->model->get_logo_image($row->id)->row_array() ?>
    <a href="<?php echo site_url('phone/phone_detail/'.$row->id); ?>">
      <div class="col-sm-2">
        
      
        <img class='img-responsive' src="<?php echo base_url(); ?>assets/upload_image/phone/<?php echo $data['img']; ?> " alt="image"/>
       
        
        <p class="name_product"><?php echo $row->name?></p>
        <p><span class="price_product"><?php echo number_format($row->price, 0, '.', '.'); ?>₫</span></p>
      </div>

    </a>
  
    
    <?php }?>
    </div> -->
    
    </div>
    
    
  </section><!--end .content-->




</body>
</html>