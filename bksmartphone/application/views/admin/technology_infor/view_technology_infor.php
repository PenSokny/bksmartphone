<script type="text/javascript">

$(document).ready(function(){
    $("#add_screenlevel").click(function()
    {

        
        location.href = 'http://localhost/bksmartphone/index.php/admin/technology_infor/technology_infor/insert' ;

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

		<h4>View Công Nghệ</h4>
        <button  type="submit" name="submit" id="add_screenlevel" class="btn btn-warning" style="width:100px ;height:30px;">Thêm</button>
		<div class="panel-body">
                <table class="table table-bordered table-responsive table-striped" id="events_list">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Tên</th>
                            <th>Hình</th>
                            <th>Miêu tả</th>
                            <th>ID TL CN</th>
                            <th>ID ĐT</th>                           
                            <th>Option</th>
                        </tr>

                    </thead>
                    <tbody>
                       
                    		 <?php foreach ($technology_infor as $row) { ?>
                            
                            <tr>
                           
                           
                                <td><?php echo $row->id ?> </td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->name ?></td>
                                <td  class="col-sm-2 text-center"><img src="<?php echo base_url() ?>assets/upload_image/<?php echo $path.$row->image; ?>" class="img-thumbnail col-sm-12" /></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->description ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->tech_infor_category_id ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->product_id ?></td>                                                   
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle">
                                	<div class="row" style="padding-left: 15px">
                                	 	<a href="<?php echo site_url('admin/technology_infor/technology_infor/update/'.$row->id) ?>">
                                	 		<span class="glyphicon glyphicon-pencil fa-5x" aria-hidden="true"></span>
                                		</a> 
                                	 	<a href="<?php echo site_url('admin/technology_infor/technology_infor/delete/'.$row->id) ?>" onclick="return confirm('Are you sure you want to delete?')"> 
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