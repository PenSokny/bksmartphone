
<script type="text/javascript">

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
                    url: "<?php echo base_url(); ?>index.php/home/autocomplete/",
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
      z-index: 3;
      width: 82.5%;
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

<div class="middlebar">
   			<div class="container">
    			<div class="row">
        			<div class="col-sm-4">
        			</div>
        			<div class="col-sm-4">
            			<!-- <p>Welcome To BK SMART PHONE SHOP</p> -->
        			</div>
        			<div class="col-sm-4">
          				<div class="input-group">
                			<input id="search_data" type="text"  onkeyup  ="ajaxSearch()" class="form-control" placeholder="Search">
                            
                			<span class="input-group-btn">
                    		<button class="btn btn-default" type="button" style=""><i class="glyphicon glyphicon-search"></i></button>
               				</span>
            			</div>
                  <div id="suggestions">
                      <div id="autoSuggestionsList">  
                      </div>
                  </div>
        			</div>
      
    		
 				</div>


			</div>
</div>
