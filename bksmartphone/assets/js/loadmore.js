


    $(document).ready(function(){
        get_product_phoneLoad(0);
         var number = parseInt($(".total").text() - $(".product").length) ;
         var num = number - 12;
       
        $("#load_more").click(function(e){
         //   e.preventDefault();
            var page = $(this).data('val');
            get_product_phoneLoad(page);
             num = parseInt(num - 12) ;
            $("#load_more").text('Xem them, con ' + num + ' dien thoai di dong' );
            if(parseInt($(".total").text() - $(".product").length) <= 12) {
                $(this).hide();
            }
        });
        
        $("#load_more").text('Xem them, con ' + num + ' dien thoai di dong' );
 
    });
 
    var get_product_phoneLoad = function(pages){
    //    $("#loaders").show();
        $.ajax({
           url:"http://localhost/DATNS/index.php/home/<?php echo $controller_name ?>",
          // url:"<?php echo base_url() ?>index.php/Welcome/getCountry",
            type:'GET',
            data: {page:pages}
        }).done(function(response){
            $("#ajax_loadmore").append(response);   
            $('#load_more').data('val', ($('#load_more').data('val')+1));
        });
    };
 
   
 
 
