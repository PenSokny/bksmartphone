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

		<h4>View bình luận phụ kiện</h4>
		<div class="panel-body">
                <table class="table table-bordered table-responsive table-striped" id="events_list">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Tên phụ kiện</th>
                            <th>Tên người comment</th>
                            <th>Nội dung comment</th>                         
                            <th>Option</th>
                        </tr>

                    </thead>
                    <tbody>
                       
                    		 <?php foreach ($comment_item_accessory_notregister as $row) { ?>
                            
                            <tr>
                           
                           
                                <td class="col-sm-2 text-center"><?php echo $row->id ?> </td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->item_accessory ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->name_user_notregister ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->comment ?></td>                                                   
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle">
                                	<div class="row" style="padding-left: 15px">
                                	 	<a href="<?php echo site_url('admin/accessory/comment_accessory/delete/'.$row->id) ?>" onclick="return confirm('Are you sure you want to delete?')"> 
                                	 		<span class="glyphicon glyphicon-trash fa-5x" aria-hidden="true"></span>
                                	 	</a>
                                	</div> 
                                </td>
                            
                            </tr> 
                              
                            <?php } ?>
                             <?php foreach ($comment_item_accessory_register as $row) { ?>
                            
                            <tr>
                           
                           
                                <td class="col-sm-2 text-center"><?php echo $row->id ?> </td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->item_accessory ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->name_user_register ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->comment ?></td>                                                   
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle">
                                    <div class="row" style="padding-left: 15px">
                                        <a href="<?php echo site_url('admin/accessory/comment_accessory/delete/'.$row->id) ?>" onclick="return confirm('Are you sure you want to delete?')"> 
                                            <span class="glyphicon glyphicon-trash fa-5x" aria-hidden="true"></span>
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