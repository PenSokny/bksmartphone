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

		<h4>View Phụ kiện</h4>
		<div class="panel-body">
                <table class="table table-bordered table-responsive table-striped" id="events_list">
                    <thead>
                        <tr>
                            <th>ID Hóa đơn</th>
                            <th>Tên Phụ kiện</th> 
                            <th>Giá Trị</th>                     
                            <th>Tên khách hàng</th>
                            <th>Màu lựa chọn</th>                       
                            <th>Thời gian đặt hàng</th>                          
                            <th>Option</th>
                        </tr>

                    </thead>
                    <tbody>
                       
                    		 <?php foreach ($accessory_usernotregister as $row) { ?>
                            
                            <tr>
                           
                           
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->id_receipt ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->accessories_name ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->accessory_price ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->fullname ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->name ?></td>
                               
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->time_order ?></td>                                                       
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle">
                                	<div class="row" style="padding-left: 15px">
                                	 	<a href="<?php echo site_url('admin/order/accessory_order/delete/'.$row->id_order) ?>" onclick="return confirm('Are you sure you want to delete?')"> 
                                            <span class="glyphicon glyphicon-trash fa-5x" aria-hidden="true"></span>
                                        </a> 
                                	</div> 
                                </td>
                            
                            </tr> 
                              
                            <?php } ?>
                             <?php foreach ($accessory_userregister as $row) { ?>
                            
                            <tr>
                           
                           
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->id_receipt ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->accessories_name ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->accessory_price ?></td>

                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->fullname ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->name ?></td>
                         
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->time_order ?></td>                                                       
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle">
                                    <div class="row" style="padding-left: 15px">
                                        <a href="<?php echo site_url('admin/order/accessory_order/delete/'.$row->id_order) ?>" onclick="return confirm('Are you sure you want to delete?')"> 
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