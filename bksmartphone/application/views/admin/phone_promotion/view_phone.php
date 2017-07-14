<script type="text/javascript">

$(document).ready(function(){
    
     $('#events_list').DataTable();
});


</script>


</br>
</br>
 <section>
<div class="container">
	<div class="row">

	
	<div class="col-sm-12">

		<h4>View Điện Thoại</h4>
		<div class="panel-body">
                <table class="table table-bordered table-responsive table-striped" id="events_list">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Tên Điện Thoại</th>                      
                            <th>Khuyên Mãi</th>                          
                            <th>Option</th>
                        </tr>

                    </thead>
                    <tbody>
                       
                    		 <?php foreach ($phone as $row) { ?>
                            
                            <tr>
                           
                           
                                <td class="col-sm-2 text-center"><?php echo $row->id ?> </td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->name ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->promotion_percent ?></td>                                                     
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle">
                                	<div class="row" style="padding-left: 15px">
                                	 	<a href="<?php echo site_url('admin/promotion/phone_promotion/update/'.$row->id) ?>">
                                	 		<span class="glyphicon glyphicon-pencil fa-5x" aria-hidden="true"></span>
                                		</a> 
                                	</div> 
                                </td>
                            
                            </tr> 
                              
                            <?php } ?>
                      
                    </tbody>


                </table>
           

            </div>

	</div>
	</div>
</div>
</section>