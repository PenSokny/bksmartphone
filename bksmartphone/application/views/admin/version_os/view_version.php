<script type="text/javascript">

$(document).ready(function(){
    $("#add_versionos").click(function()
    {

        
        location.href = 'http://localhost/bksmartphone/index.php/admin/phone/version_os/insert' ;

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

		<h4>View Phiên bản hệ điều hành</h4>
        <button  type="submit" name="submit" id="add_versionos" class="btn btn-warning" style="width:100px ;height:30px;">Thêm</button>
		<div class="panel-body">
                <table class="table table-bordered table-responsive table-striped" id="events_list">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Tên phiên bản HĐH</th>
                            <th>ID Hệ điều hành</th>                           
                            <th>Option</th>
                        </tr>

                    </thead>
                    <tbody>
                       
                    		 <?php foreach ($version_os as $row) { ?>
                            
                            <tr>
                           
                           
                                <td class="col-sm-2 text-center"><?php echo $row->id ?> </td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->name ?></td>
                                <td class="id_os" style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->operating_system_id ?> </td>                                   
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle">
                                	<div class="row" style="padding-left: 15px">
                                	 	<a href="<?php echo site_url('admin/phone/version_os/update/'.$row->id) ?>">
                                	 		<span class="glyphicon glyphicon-pencil fa-5x" aria-hidden="true"></span>
                                		</a> 
                                	 	<a href="<?php echo site_url('admin/phone/version_os/delete/'.$row->id) ?>" onclick="return confirm('Are you sure you want to delete?')"> 
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