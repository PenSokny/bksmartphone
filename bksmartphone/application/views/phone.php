
<script>
    var product_number = 12;
    $(document).ready(function(){
        get_phoneLoad(0);
        $("#btn-load-search").hide();
          number = parseInt($(".total").text()) - parseInt($(".product").length) ;
          if(number <= 12)
          {
            num = number;
            $("#load_more").hide();
          }
          else
          {

            num = number - 12;

          }
        $("#load_more").text('Xem thêm, còn ' + num + '  điện thoại di động' );

        $("#load_more").click(function(e){
         //   e.preventDefault();
            var page = $(this).data('val');
            get_phoneLoad(page);
             num = parseInt(num - 12) ;
            $("#load_more").text('Xem thêm, còn ' + num + ' điện thoại di động' );
            if(parseInt($(".total").text()) - parseInt($(".product").length) <= 12) {
                $(this).hide();
            }
        });

        $("#btn-load-search").click(function(e){
            var page = $(this).data('val');
       //     product_number+= 12;
            advance_search(price_level_id, brand_id,screen_level_id,operating_system, page);
            num_search = parseInt(total - 12) ;
            $("#btn-load-search").text('Xem thêm, còn ' + num_search + ' điện thoại di động' );
            if(parseInt($(".total-search").text()) - parseInt($(".product").length) <= 12) {
                $(this).hide();
            }
        });

        var price_level_id = "";
        var brand_id = "";
        var screen_level_id = "";
        var operating_system = "";
        var total;
        var num_search;
        
        $(".price-level").click(function() {
       //     $("#btn-load-search").show();
            $("#btn-load-search").data('val', 0);
      //      product_number = 12;
            var page = $("#btn-load-search").data('val');
            $("#ajax_loadmore").html("");
            $("#load_more").hide();
            price_level_id = $(this).val();
            advance_search(price_level_id, brand_id,screen_level_id,operating_system, page);
            $("#btn-load-search").hide();
            
        });

        $(".brand").click(function() {
      //      $("#btn-load-search").show();
            $("#btn-load-search").data('val', 0);
       //     product_number = 12;
            var page = $("#btn-load-search").data('val');
            $("#ajax_loadmore").html("");


            brand_id = $(this).val();
            advance_search(price_level_id, brand_id,screen_level_id,operating_system,page);
            $("#load_more").hide();
            $("#btn-load-search").hide();
        });
         $(".screen_level").click(function() {
      //      $("#btn-load-search").show();
            $("#btn-load-search").data('val', 0);
      //      product_number = 12;
            var page = $("#btn-load-search").data('val');
            $("#ajax_loadmore").html("");


            screen_level_id = $(this).val();
            advance_search(price_level_id, brand_id,screen_level_id,operating_system,page);
            $("#load_more").hide();
            $("#btn-load-search").hide();
        });
          $(".operating_system").click(function() {
        //    $("#btn-load-search").show();
            $("#btn-load-search").data('val', 0);
      //      product_number = 12;
            var page = $("#btn-load-search").data('val');
            $("#ajax_loadmore").html("");

            operating_system = $(this).val();
            advance_search(price_level_id, brand_id,screen_level_id,operating_system,page);
            $("#load_more").hide();
            $("#btn-load-search").hide();
        });

         


          
    });
 
    var get_phoneLoad = function(pages){
    //    $("#loaders").show();
        $.ajax({
           url:"http://localhost/bksmartphone/index.php/phone/<?php echo $controller_data ?>",
          // url:"<?php echo base_url() ?>index.php/Welcome/getCountry",
            type:'GET',
            data: {page:pages}
        }).done(function(response){
            $("#ajax_loadmore").append(response);   
            $('#load_more').data('val', ($('#load_more').data('val')+1));
        });
    };
 

    var advance_search = function(price_level_id, brand_id,screen_level_id ,operating_system_id,pages){
        $.ajax({
           url:"http://localhost/bksmartphone/index.php/phone/advance_search?price_level_id="+price_level_id+"&brand_id="+brand_id+'&screen_level_id='+screen_level_id+'&operating_system_id='+operating_system_id+'&page='+pages,
           type:'GET', 
           data: {page:pages}
        }).done(function(response){
            $("#ajax_loadmore").append(response);
            $("#btn-load-search").data('val', ($("#btn-load-search").data('val')+1));
            advance_search_total(price_level_id, brand_id,screen_level_id,operating_system_id);
        });
    };

    var advance_search_total = function(price_level_id, brand_id,screen_level_id ,operating_system_id){
        $.ajax({
           url:"http://localhost/bksmartphone/index.php/phone/advance_search?price_level_id="+price_level_id+"&brand_id="+brand_id+'&screen_level_id='+screen_level_id+'&operating_system_id='+operating_system_id+'&page=',
           type:'GET', 
        }).done(function(response){
            $(".total-search").html(response);
            total = parseInt($(".total-search").text()) -  parseInt($(".product").length) ; // product_number;
            
            if(total <= 12)
              {
                num_search = total;
              }
              else
              {

                num_search = total - 12;

              }
            if(num_search > 0) {
                $("#btn-load-search").show();
                $("#btn-load-search").text('Xem thêm, còn ' + num_search + '  điện thoại di động' );
            }
            else
                $("#btn-load-search").hide();

        });
    };

</script>

<div class="search_item">
<div class="container">
<div class="well well-sm">

   <form class="form-inline">
    <div class="row">
            

             <div style="z-index: 2;" class="col-sm-4">
                 
                <button style="width:150px" class="btn btn-info" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                    Tìm nâng cao
                    <span class="caret"></span>
                </button>
                <div class="collapse" id="collapseExample" style="width:1130px ">
                        <div class="well" >
                            <div class="row">
                                
                                <div class="col-sm-2">
                                    
                                    
                                    <form role="form" method="get" action="#" >
                                        
                                        <a href="#"><label><input type="radio" name="price" value="" class="price-level" checked="checked">Tất CẢ MỨC GIÁ</label></a></br>
                                        <?php foreach ($listPriceLevels as $rowPrice) {?>
                                        <a href="#"><label><input type="radio" name="price" value="<?php echo $rowPrice->id ?>" class="price-level"><?php  echo $rowPrice->name ?></label></a></br>
                                        <?php } ?>
                                    </form>
                                    
                                </div>
                                <div class="col-sm-4">
                                    
                                    
                                    <form role="form" method="get" action="#" >
                                        
                                        <a href="#"><label><input type="radio" name="brand" class="brand" value="" checked="checked">Tất CẢ HÀNG SẢN XUẤT</label></a></br>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <?php foreach ($listBrands1 as $rowHSX1) {?>
                                                    <a href="#"><label><input type="radio" name="brand" class="brand" value="<?php echo $rowHSX1->id ?>" ><?php  echo $rowHSX1->name ?></label></a></br>
                                                    <?php } ?>
                                                </div>
                                                <div class="col-sm-6">
                                                    <?php foreach ($listBrands2 as $rowHSX2) {?>
                                                    <a href="#"><label><input type="radio" name="brand" class="brand" value="<?php echo $rowHSX2->id ?>" ><?php  echo $rowHSX2->name ?></label></a></br>
                                                    <?php } ?>
                                                </div>
                                            </div>
                                    </form>
                                    
                                </div>
                                <div class="col-sm-2">
                                    
                                    
                                    <form role="form" method="get" action="#" >
                                        
                                        <a href="#"><label><input type="radio" name="screen" class="screen_level" value="" checked="checked">Tất Cả MÀN HÌNH</label></a></br>
                                        <?php foreach ($listScreen as $rowScreen) {?>
                                        <a href="#"><label><input type="radio" name="screen" class="screen_level" value="<?php echo $rowScreen->id ?>" ><?php  echo $rowScreen->name ?></label></a></br>
                                        <?php } ?>
                                    </form>
                                    
                                </div>
                                <div class="col-sm-3">
                                    
                                    
                                    <form role="form" method="get" action="#" >
                                        
                                        <a href="#"><label><input type="radio" name="operatingSystem" class="operating_system" value="" checked="checked">Tất Cả HỆ ĐIỀU HÀNH</label></a></br>
                                        <?php foreach ($listOS as $rowOS) {?>
                                        <a href="#"><label><input type="radio" name="operatingSystem" class="operating_system" value="<?php echo $rowOS->id ?>" ><?php  echo $rowOS->name ?></label></a></br>
                                        <?php } ?>
                                    </form>
                                    
                                </div>
                                

                            </div>
                        </div>
                </div>
            </div>

            <div style ="z-index: 1;"class="col-sm-4">
                
                <div class="dropdown">
                <button style="width:150px" class="btn btn-info dropdown-toggle price" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                Mức giá
                <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenu1" >
                    <li><a  href="<?php echo site_url('phone'); ?>">Tất Cả</a></li>
                    <li role="separator" class="divider"></li>
                    <?php foreach ($listPriceLevels as $rowPrice) {?>
                    <li><a  href="<?php echo site_url('phone/price_level/'.$rowPrice->id); ?>"><?php  echo $rowPrice->name ?></a></li>
                    <?php } ?>
                </ul>
                </div>
            </div>
           
  
            <div style ="z-index: 1;" class="col-sm-4">
                <div class="row">
                <div class="dropdown" >
                <button style="width:150px" class="btn btn-info dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                Hãng Sản Xuất
                <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenu1" >
                    <li><a href="<?php echo site_url('phone'); ?>">Tất Cả</a></li>
                    <li role="separator" class="divider"></li>
                    
                       
                        <div class="col-sm-8 link_product">
                            <?php foreach ($listBrands1 as $rowHSX1) {?>
                            <li><a href="<?php echo site_url('phone/brand/'.$rowHSX1->id); ?>"><?php  echo $rowHSX1->name ?></a></li>
                            <?php } ?>
                        </div>
                        <div class="col-sm-4 link_product">
                            <?php foreach ($listBrands2 as $rowHSX2) {?>
                            <li><a href="<?php echo site_url('phone/brand/'.$rowHSX2->id); ?>"><?php  echo $rowHSX2->name ?></a></li>
                            <?php } ?>
                        </div>
                   
                    
                </ul>
                </div>
                </div>
            </div>
            
    </form>


</div>
</div>
</div>
 
<div class="content"> 
    

<br>
<br>

    <div class="container">  
        <div class="row" id="ajax_loadmore">
        </div>
         
        <div class="container" style="text-align: center"><button class="btn" id="load_more" data-val = "0"></button></div>
        <div class="container" style="text-align: center"><button id="btn-load-search" data-val = "0"></button></div>
    </div>  
        
    <div hidden class="total"><?php echo $total; ?></div>
    <div hidden class="total-search"></div>
    
</div></br>


</body>
</html>