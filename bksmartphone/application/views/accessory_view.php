
<script>

		$(document).ready(function(){

		var accessoryCategory="";
        var total;
        var num_search;
        
        if(parseInt($(".phone_id").text())  >= 0 )
        {

            $(".id_phone").show();

        }
         if(parseInt($(".phone_ids").text())  >= 0 )
        {

            $(".id_phones").show();

        }

     
        
        if($.inArray(parseInt($(".id_confirm").text()),parseInt($(".id_promote").text())) > 0)
        {

            $(".new_price").show();
            $(".old_price").addClass("price_control");
            

        }
        else
        {
             $(".new_price").hide();
             $(".old_price").removeClass("price_control");

        }
      
      
        $("#btn-loadmore-accessory").hide();
		$(".accessoryCategory").click(function()
			{			
                 $(".id_phones").hide();
                $("#ajax_loadmore_accessory").html("");
				accessoryCategory =$(this).val();
                $("#btn-loadmore-accessory").data('val', 0);
                var page = $("#btn-loadmore-accessory").data('val');
                
                accessory(accessoryCategory,page);
                $("#btn-loadmore-accessory").hide();
               
				
			});

        $("#btn-loadmore-accessory").click(function(e){
            var page = $(this).data('val');
       //     product_number+= 12;
            accessory(accessoryCategory,page);
            num_search = parseInt(total - 12) ;
            $("#btn-loadmore-accessory").text('Xem thêm, còn ' + num_search );
            if(parseInt($(".total-accessory").text()) - parseInt($(".product_accessory").length) <= 12) {
                $(this).hide();
            }
        });
		
		});
         
       
		var accessory = function(accessory_category_id,pages)
        {
            $.ajax({
                url:"http://localhost/bksmartphone/index.php/accessory/loadAccessory?accessory_category_id="+accessory_category_id+"&page="+pages,
                type:'GET',
                data: {page:pages}
            }).done(function(response){
                

                $("#ajax_loadmore_accessory").append(response);
                $("#btn-loadmore-accessory").data('val', ($("#btn-loadmore-accessory").data('val')+1));
                accessory_total(accessory_category_id);
        });
        
        };
        var accessory_total = function(accessory_category_id)
        {
            $.ajax({
                url:"http://localhost/bksmartphone/index.php/accessory/loadAccessory?accessory_category_id="+accessory_category_id+"&page=",
                type:'GET',
            }).done(function(response){
                $(".total-accessory").html(response);

                total = parseInt($(".total-accessory").text()) -  parseInt($(".product_accessory").length) ; // product_number;          
                if(total <= 12)
                {
                    num_search = total;                  
                }
                else
                {
                    num_search = total - 12;
                }
                if(num_search > 0)
                {
                     $("#btn-loadmore-accessory").show();
                     $("#btn-loadmore-accessory").text('Xem thêm, còn ' + num_search  );
                }            
        
            });
        };
        function ajaxSearch() 
        {
            var input_data = $('#search_data').val();

            if (input_data.length === 0) 
            {
                $('#suggestions').hide();
            } else 
            {

                var post_data = 
                {
                    'search_data': input_data,
                    
                };

                $.ajax(
                {
                    type: "POST",
                    url: "<?php echo base_url(); ?>index.php/accessory/autocomplete/",
                    data: post_data,
                    success: function(data)
                     {
                        // return success
                        if (data.length > 0) 
                        {
                            $('#suggestions').show();
                            $('#autoSuggestionsList').addClass('auto_list');
                            $('#autoSuggestionsList').html(data);
                        }
                    }
                });

            }
        }
        
</script>
<style type="text/css">
 
  #autoSuggestionsList
  {
      z-index: 1;
      width: 52.5%;
  }
    #autoSuggestionsList > li 
    {
         background: none repeat scroll 0 0 #F3F3F3;
         border-bottom: 1px solid #E3E3E3;
         list-style: none outside none;
         padding: 3px 5px 3px 15px;
         text-align: left;
    }
    #autoSuggestionsList > li a { color: #800000; }
    .auto_list {
         border: 1px solid #E3E3E3;
         border-radius: 5px 5px 5px 5px;
         position: absolute;
    }
</style>
<div class="container">
	<div class="row">
		<div class="col-sm-3">
			<h4 style="color:blue">Phụ kiện điện thoại</h4>
			<br>
			<form role="form" method="get" action="#" >                                      
                            <a href="#"><label><input type="radio" name="accessoryCategory_name" value="0" class="accessoryCategory" checked="checked">Phụ Kiện Nổi Bật</label></a></br>
                            <hr>
                            <?php foreach ($list_accessory_categories as $rows) { ?>
                            <a href="#"><label><input type="radio" name="accessoryCategory_name" value="<?php echo $rows->id ?>" class="accessoryCategory"><?php echo $rows->name; ?></label></a></br>
                            <hr>
                            <?php } ?>
            </form>
		</div>
		<div class="col-sm-9">
			<div class="row">
					<div class="input-group" style="width:500px">
                			<input id="search_data" type="text"  onkeyup  ="ajaxSearch()"   class="form-control" placeholder="Tìm phụ kiện cho thiết bị của bạn , vd : iPhone 6,Galaxy Note 4.....">
                			<span class="input-group-btn">
                    				<button class="btn btn-default" type="button" style=""><i class="glyphicon glyphicon-search"></i></button>
               				</span>
            		</div>
                    <div id="suggestions">
                        <div id="autoSuggestionsList">  
                        </div>
                    </div>
            		<br>
            		<br>
            		<div hidden class="phone_id"> <?php echo $id_phone ?> </div>
                    <div hidden class="phone_ids"> <?php echo $id_phones ?> </div>
            		<div class="row" id="ajax_loadmore_accessory">
                    
                        <div  hidden class="id_promote">
                        
                            <?php foreach ($id_promote as $val) {
                            echo $val;
                            } ?>
                        </div>
                        <div hidden class="id_phone">
                            <div class="row">
                                <div class="col-sm-2 ">
                                    <a href="<?php echo site_url('accessory/featured_accessory?phone_id='.$id_phone.'&accessory_category_id='); ?>"><p>Tất cả </p></a>
                                </div>                       
                                <?php foreach ($list_category_accessory_phone as $row) { ?>
                                <div class="col-sm-3 ">
                                    <a href=" <?php echo site_url('accessory/featured_accessory?phone_id='.$id_phone.'&accessory_category_id='.$row->id); ?> "><p><?php echo $row->totalAccessories.' '.$row->name ?></p></a> 
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                        <div hidden class="id_phone ">
                        <div class="row">
                            <?php foreach ($list_accessory_phone as $row) { ?>
                            <?php   $data  = $this->model->get_logoaccessory_image($row->id)->row_array() ?>
                            <div hidden class="id_confirm"><?php echo $row->id ?> </div>
                        
                            <div class="col-sm-3 ">
                                <a href="<?php echo site_url('accessory/accessory_detail/'.$row->id); ?>   ">
                                    <div class="picture">
                                        <img class='img-responsive' src="<?php echo base_url(); ?>assets/upload_image/accessories/<?php echo $data['img']; ?>"/>
                                    </div>
                                    <?php if($row->promotion_percent > 0 ) { ?>
                                    <div class="price price_product">
                                         <p  style="text-decoration: line-through" class="old_price">
                                            <span><?php echo number_format($row->price, 0, '.', '.'); ?></span>₫</p> 
                                        <p hidden class="new_price"><span><?php echo number_format(($row->price - ($row->price * $row->promotion_percent/100)), 0, '.', '.')?></span>₫</p>
                                    </div>
                                    <div class="price_product">

                                        <div> <span><?php echo number_format(($row->price - ($row->price * $row->promotion_percent/100)), 0, '.', '.'); ?></span>₫ </div>
                                    </div>
                                    <?php }else{ ?>
                                    <div class="price price_product">
                                        <p  class="old_price"><span><?php echo number_format($row->price, 0, '.', '.'); ?></span>₫</p> <p hidden class="new_price"><span><?php echo number_format(($row->price - ($row->price * $row->promotion_percent/100)), 0, '.', '.'); ?></span>₫</p>
                                    </div>
                                    <?php } ?>
                                    <div class="name name_product">
                                        <?php echo $row->name ?>
                                    </div>
                                </a>
                            </div>
                            <?php } ?>
                         </div>
                    </div>



                    <div hidden class="id_phones link_product">
                    <div class="row">
                        <div class="col-sm-2">
                        <a href="<?php echo site_url('accessory/search_accessory_phone?phone_id='.$id_phones.'&accessory_category_id='); ?>"><p>Tất cả </p></a>
                        </div>                       
                        <?php foreach ($list_category_accessory_phones as $row) { ?>
                        <div class="col-sm-3">
                            <a  href=" <?php echo site_url('accessory/search_accessory_phone?phone_id='.$id_phones.'&accessory_category_id='.$row->id); ?> "><p><?php echo $row->totalAccessories.' '.$row->name ?></p></a> 
                        </div>
                        <?php } ?>
                    </div>
                    </div>
                    <div hidden class="id_phones link_product ">
                    <div class="row">
                        <?php foreach ($list_accessory_phones as $row) { ?>
                         <?php   $data  = $this->model->get_logoaccessory_image($row->id)->row_array() ?>
                        <div class="col-sm-3">
                            <a href=" <?php echo site_url('accessory/accessory_detail/'.$row->id); ?>      ">
                                <div class="picture">
                                    <img class='img-responsive' src="<?php echo base_url(); ?>assets/upload_image/accessories/<?php echo $data['img']; ?>"/>
                                </div>
                                <?php if($row->promotion_percent > 0 ) { ?>
                                <div class="price price_product">
                                    <p  style="text-decoration: line-through" class="old_price"><span><?php echo number_format($row->price, 0, '.', '.'); ?></span>₫</p> 
                                    <p hidden class="new_price"><span><?php echo number_format(($row->price - ($row->price * $row->promotion_percent/100)), 0, '.', '.')?></span>₫</p>
                                </div>
                                <div class="price_product">

                                    <div> <span><?php echo number_format(($row->price - ($row->price * $row->promotion_percent/100)), 0, '.', '.'); ?></span>₫ </div>
                                </div>
                                <?php }else{ ?>
                                <div class="price">
                                    <p  class="old_price price_product"><span><?php echo number_format($row->price, 0, '.', '.'); ?></span>₫</p> <p hidden class="new_price"><span><?php echo number_format(($row->price - ($row->price * $row->promotion_percent/100)), 0, '.', '.'); ?></span>₫</p>
                                </div>
                                <?php } ?>
                                <div class="name name_product">
                                    <?php echo $row->name ?>
                                </div>
                            </a>
                        </div>
                        <?php } ?>
                    </div>
                    </div>
        			</div><!-- -->
                   
        			<div  style="text-align: center"><button class="btn" id="btn-loadmore-accessory" data-val = "0"></button></div>      			
        			<div hidden class="total-accessory"></div>
                
			</div>		
		</div>
	</div>
</div>