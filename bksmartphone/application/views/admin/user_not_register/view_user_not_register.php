
<script>
  
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

        <h4>View bảng người không đăng kỳ tài khoản</h4>
        <div class="panel-body">
                <table class="table table-bordered table-responsive table-striped" id="events_list">
                    <thead>
                        <tr>
                          
                            <th>ID</th>
                            <th>Giới tính</th>
                            <th>Họ tên</th>  
                            <th>Số điện thoại</th>
                            <th>email</th> 
                            <th>trạng thái</th>
                            <th>option</th>   
                        </tr>

                    </thead>
                    <tbody>
                       
                             <?php foreach ($users_not_register as $row) { ?>
                            
                            <tr >
                           
                               
                                <td class="col-sm-2 text-center"><?php echo $row->id ?> </td>                   
                                <td class="id_os" style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo ($row->gender ==0)?'Nử':'Nam'; ?> </td>                       
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->fullname ?></td>
                                <td class="id_os" style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->phone_number ?> </td>
                                <td class="id_os" style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->email ?> </td>   
                                <td class="id_os" style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo ($row->type == 0)?'order':'comment'; ?> </td>                                                                                                      
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle">
                                    <div class="row" style="padding-left: 15px"> 
                                        <a href="<?php echo site_url('admin/user/user_not_register/delete/'.$row->id) ?>" onclick="return confirm('Are you sure you want to delete?')"> 
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