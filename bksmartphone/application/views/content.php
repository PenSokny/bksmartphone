

<script>
    $(document).ready(function(){
        get_phoneLoad(0);
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
          
       
        $("#load_more").click(function(e){
         //   e.preventDefault();
            var page = $(this).data('val');
            get_phoneLoad(page);
             num = parseInt(num - 12) ;
            $("#load_more").text('Xem them, con ' + num + ' dien thoai di dong' );
            if(parseInt($(".total").text()) - parseInt($(".product").length) <= 12) {
                $(this).hide();
            }
        });
        if(num<=12)
        {
          $("#load_more").text('Xem them, con ' + num + ' dien thoai di dong' );
         
        }
        else
        {
          $("#load_more").text('Xem them, con ' + num + ' dien thoai di dong' );

        }
        
 
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
 
   
 
 
</script>

<br>
<br>

	<div class="container">  
		<div class="row" id="ajax_loadmore">
		</div>
		 
		<div class="container" style="text-align: center"><button class="btn" id="load_more" data-val = "0"></button></div>
    </div>	
		
		
		



