<script type="text/javascript">

$(document).ready(function(){
    $("#add_screenlevel").click(function()
    {

        
        location.href = 'http://localhost/bksmartphone/index.php/admin/accessory/image_accessory/insert' ;

    });
     $('#events_list').DataTable();
});


</script>


</br>
</br>
 <section>
<div class="container">
	<div class="row">

	
	<div class="col-sm-12">

		<h4>View hình ảnh phụ kiện</h4>
        <button  type="submit" name="submit" id="add_screenlevel" class="btn btn-warning" style="width:100px ;height:30px;">Thêm</button>
		<div class="panel-body">
                <table class="table table-bordered table-responsive table-striped" id="events_list">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Tên hình ảnh</th>
                            <th>Hình ảnh</th>
                            <th>Trạng thái hình</th>
                            <th>ID phụ kiện</th>                          
                            <th>Option</th>
                        </tr>

                    </thead>
                    <tbody>
                       
                    		 <?php foreach ($image_accessory as $row) { ?>
                            
                            <tr>
                           
                           
                                <td class="col-sm-2 text-center"><?php echo $row->id ?> </td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->name ?></td> 
                                <td  class="col-sm-2 text-center"><img src="<?php echo base_url() ?>assets/upload_image/<?php echo $path.$row->img; ?>" class="img-thumbnail col-sm-12" /></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->type_image ?></td> 
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->accessory_id ?></td>                                                   
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle">
                                	<div class="row" style="padding-left: 15px">
                                	 	<a href="<?php echo site_url('admin/accessory/image_accessory/update/'.$row->id) ?>">
                                	 		<span class="glyphicon glyphicon-pencil fa-5x" aria-hidden="true"></span>
                                		</a> 
                                	 	<a href="<?php echo site_url('admin/accessory/image_accessory/delete/'.$row->id) ?>" onclick="return confirm('Are you sure you want to delete?')"> 
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