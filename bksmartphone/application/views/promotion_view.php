

<script>

    $(document).ready(function(){

    var phone_brand_id = "";
    var page = "";
    var accessory_category_id = "";
    $(".accessory").click(function(){

        $("#home_promotion").hide();
        $(".content").show();
        $("#load_more_promotion").data('val',0);
        page = $("#load_more_promotion").data('val'); 
        accessory_category_id = $(this).val();
        accessory_promotion(accessory_category_id,page);


    });

     $(".phone_promotion").click(function(){

        $("#home_promotion").hide();
        $(".content").show();
        $("#load_more_promotion").data('val',0);
        page = $("#load_more_promotion").data('val'); 
        phone_brand_id  = $(this).val();
        phone_promotion(phone_brand_id,page);


    });
     $("#load_more_promotion").click(function(e){
            var page = $(this).data('val');
       //     product_number+= 12;
            phone_promotion(phone_brand_id,page);
            accessory_promotion(accessory_category_id,page);
            num = parseInt(total - 12) ;
            $("#load_more_promotion").text('Xem thêm, còn ' + num );
            if(parseInt($(".total-search-promotion").text()) - parseInt($(".product").length) <= 12) {
                $(this).hide();
            }
        });


     get_phoneLoad(0);
          number = parseInt($(".total_phone").text()) - parseInt($(".product").length) ;
          if(number <= 6)
          {
            
            $("#loadmore_phone").hide();
          }

     $("#loadmore_phone").click(function(e){
         //   e.preventDefault();
            var page = $(this).data('val');
            get_phoneLoad(page);
            if(parseInt($(".total_phone").text()) - parseInt($(".product").length) <= 6) {
                $(this).hide();
            }
        });


     get_accessoryLoad(0);
          number = parseInt($(".total_accessory").text()) - parseInt($(".product_accessory").length) ;
          if(number <= 4)
          {
            
            $("#loadmore_accessory").hide();
          }

     $("#loadmore_accessory").click(function(e){
         //   e.preventDefault();
            var page = $(this).data('val');
            get_accessoryLoad(page);
            if(parseInt($(".total_accessory").text()) - parseInt($(".product_accessory").length) <= 4) {
                $(this).hide();
            }
        });

    });



    var get_phoneLoad = function(pages){
    //    $("#loaders").show();
        $.ajax({
           url:"http://localhost/bksmartphone/index.php/promotion/<?php echo $controller_data_phone ?>",
          // url:"<?php echo base_url() ?>index.php/Welcome/getCountry",
            type:'GET',
            data: {page:pages}
        }).done(function(response){
            $("#load_more_phone").append(response);   
            $('#loadmore_phone').data('val', ($('#loadmore_phone').data('val')+1));
        });
    };
    var get_accessoryLoad = function(pages){
    //    $("#loaders").show();
        $.ajax({
           url:"http://localhost/bksmartphone/index.php/promotion/<?php echo $controller_data_accessory ?>",
          // url:"<?php echo base_url() ?>index.php/Welcome/getCountry",
            type:'GET',
            data: {page:pages}
        }).done(function(response){
            $("#load_more_accessory").append(response);   
            $('#loadmore_accessory').data('val', ($('#loadmore_accessory').data('val')+1));
        });
    };


    var total ;
    var num;
    var phone_promotion = function(brand_id,pages)
        {
            $.ajax({
                url:"http://localhost/bksmartphone/index.php/promotion/Search_phone_promotion?brand_id="+brand_id+"&page="+pages,
                type:'GET',
                data: {page:pages}
            }).done(function(response){
                $("#ajax_loadmore").html(response);
                $("#load_more_promotion").data('val', ($("#load_more_promotion").data('val')+1));
                phone_promotion_total(brand_id);
        });
        
        };

    var phone_promotion_total = function(brand_id)
    {


        $.ajax({
                url:"http://localhost/bksmartphone/index.php/promotion/Search_phone_promotion?brand_id="+brand_id+"&page=",
                type:'GET',
            }).done(function(response){
                $(".total-search-promotion").html(response);
                total = parseInt($(".total-search-promotion").text()) -  parseInt($(".product").length) ; // product_number;        
                if(total <= 12)
                {
                    num = total;  
                    $("#load_more_promotion").hide();               
                }
                else
                {
                    num = total - 12;
                }
                if(num > 0)
                {                    
                     $("#load_more_promotion").text('Xem thêm, còn ' + num  );
                } 
                
        });


    };
    var accessory_promotion = function(accessory_category_id,pages)
        {
            $.ajax({
                url:"http://localhost/bksmartphone/index.php/promotion/Search_accessory_promotion?accessory_category_id="+accessory_category_id+"&page="+pages,
                type:'GET',
                data: {page:pages}
            }).done(function(response){
                $("#ajax_loadmore").html(response);
                $("#load_more_promotion").data('val', ($("#load_more_promotion").data('val')+1));
                accessory_promotion_total(accessory_category_id);
        });
        
        };

    var accessory_promotion_total = function(accessory_category_id)
    {


        $.ajax({
                url:"http://localhost/bksmartphone/index.php/promotion/Search_accessory_promotion?accessory_category_id="+accessory_category_id+"&page=",
                type:'GET',
            }).done(function(response){
                $(".total-search-promotion").html(response);
                total = parseInt($(".total-search-promotion").text()) -  parseInt($(".product").length) ; // product_number;        
                if(total <= 12)
                {
                    num = total;  
                    $("#load_more_promotion").hide();               
                }
                else
                {
                    num = total - 12;
                }
                if(num > 0)
                {                    
                     $("#load_more_promotion").text('Xem thêm, còn ' + num  );
                }                     
            });
    };


</script>

<div class="search_promotion">
<div class="container">
<div class="well well-sm">


    <div class="row">
            
            <div class="col-sm-2">
            </div>
            <div class="col-sm-4">
                <form class="form-inline">
                 <span class="glyphicon glyphicon-random fa-5x" aria-hidden="true"></span>
                <button style="width:150px" class="btn btn-info" type="button" data-toggle="collapse" data-target="#collapseExample1" aria-expanded="false" aria-controls="collapseExample1">
                    Phụ Kiện
                    <span class="caret"></span>
                </button>
                <div class="collapse" id="collapseExample1" style="width:220px ">
                        <div class="well" >             
                                    <form role="form" method="get" action="#" >
                                        
                                        <a href="#"><label><input type="radio" name="price" value="" class="accessory" checked="checked">Tất Cả Phụ Kiện</label></a></br>
                                        <?php foreach ($list_accessories_category as $row) {?>
                                        <a href="#"><label><input type="radio" name="price" value="<?php echo $row->id ?>" class="accessory"><?php  echo $row->name ?></label></a></br>
                                        <?php } ?>
                                    </form>
            
                        </div>
                </div>
                </form>
            </div>
             <div class="col-sm-6">
                <form class="form-inline">
                 <span class="glyphicon glyphicon-random fa-5x" aria-hidden="true"></span>
                <button style="width:150px" class="btn btn-info" type="button" data-toggle="collapse" data-target="#collapseExample2" aria-expanded="false" aria-controls="collapseExample2">
                    Điện Thoại
                    <span class="caret"></span>
                </button>
                <div class="collapse" id="collapseExample2" style="width:300px ">
                        <div class="well" >         
                                    <form role="form" method="get" action="#" >
                                        
                                        <a href="#"><label><input type="radio" name="brand" class="phone_promotion" value="" checked="checked">Tất Cả HÀNG SẢN XUẤT</label></a></br>
                                            <div class="row">
                                                <div class="col-sm-7">
                                                    <?php foreach ($list_phone1 as $row1) {?>
                                                    <a href="#"><label><input type="radio" name="brand" class="phone_promotion" value="<?php echo $row1->id ?>" ><?php  echo $row1->name ?></label></a></br>
                                                    <?php } ?>
                                                </div>
                                                <div class="col-sm-5">
                                                    <?php foreach ($list_phone2 as $row2) {?>
                                                    <a href="#"><label><input type="radio" name="brand" class="phone_promotion" value="<?php echo $row2->id ?>" ><?php  echo $row2->name ?></label></a></br>
                                                    <?php } ?>
                                                </div>
                                            </div>
                                    </form>
                        </div>
                </div>
                </form>
            </div>
            
    
    </div>
</div>

</div>
</div>
<div id="home_promotion">

    <div class="container link_product">

        <h3 style="color:blue"><a href="<?php echo site_url('phone'); ?>">Điện Thoại</a></h3>
        </hr>     
       <div class="row" id="load_more_phone"></div>
       <a style="background:yellow" id="loadmore_phone" data-val = "0">Xem thêm</a>
       <div hidden class="total_phone"><?php echo $total_phone; ?></div>
       
        <h3 style="color:blue"><a href="<?php echo site_url('accessory'); ?>">Phụ Kiện</a></h3>
        </hr>    
        <div class="row" id="load_more_accessory"></div>
        <a  style="background:yellow" id="loadmore_accessory" data-val = "0">Xem thêm</a>
        <div hidden class="total_accessory"><?php echo $total_accessory; ?></div>
    </div>
</div>

<div hidden class="content"> 
<br>
<br>

    <div class="container">  
        <div class="row" id="ajax_loadmore">
        </div>
         
        <div class="container" style="text-align: center"><button class="btn" id="load_more_promotion" data-val = "0"></button></div>

        
    </div>  
     <div hidden class="total-search-promotion"></div>
        
    
    
</div>
<?php $this->load->view('footer') ?>


</body>
</html

