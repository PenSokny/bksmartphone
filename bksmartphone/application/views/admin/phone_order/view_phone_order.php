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
                            <th>ID Hóa đơn</th>
                            <th>Tên Điện Thoại</th>
                            <th>Giá Trị</th>
                            <th>Số lượng phụ kiện mua cùng</th>                      
                            <th>Tên khách hàng</th>
                            <th>Màu lựa chọn</th>                       
                            <th>Thời gian đặt hàng</th>                          
                            <th>Option</th>
                        </tr>

                    </thead>
                    <tbody>
                       
                    		 <?php foreach ($phone_usernotregister as $row) { ?>
                            
                            <tr>
                           
                           
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->id_receipt ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->product_name ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->price ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->total_accessories ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->fullname ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->name ?></td>
                               
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->time_order ?></td>                                                       
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle">
                                	<div class="row" style="padding-left: 15px">
                                	 	<a href="<?php echo site_url('admin/order/phone_order/update/'.$row->id_receipt.'/'.$row->id_order) ?>" onclick="return confirm('Are you sure you want to delete?')"> 
                                            <span class="glyphicon glyphicon-trash fa-5x" aria-hidden="true"></span>
                                        </a> 
                                	</div> 
                                </td>
                            
                            </tr> 
                              
                            <?php } ?>
                             <?php foreach ($phone_userregister as $row) { ?>
                            
                            <tr>
                           
                           
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->id_receipt ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->product_name ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->price ?></td>

                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->total_accessories ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->fullname ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->name ?></td>
                         
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->time_order ?></td>                                                       
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle">
                                    <div class="row" style="padding-left: 15px">
                                        <a href="<?php echo site_url('admin/order/phone_order/update/'.$row->id_receipt.'/'.$row->id_order) ?>" onclick="return confirm('Are you sure you want to delete?')"> 
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