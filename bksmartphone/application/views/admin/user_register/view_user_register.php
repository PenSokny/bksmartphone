<script type="text/javascript">

$(document).ready(function(){
    $("#add_versionos").click(function()
    {

        
        location.href = 'http://localhost/bksmartphone/index.php/admin/user/user_register/insert' ;

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

        <h4>View bảng người đăng kỳ tài khoản</h4>
        <button  type="submit" name="submit" id="add_versionos" class="btn btn-warning" style="width:100px ;height:30px;">Thêm</button>
        <div class="panel-body">
                <table class="table table-bordered table-responsive table-striped" id="events_list">
                    <thead>
                        <tr>
                          
                            <th>ID</th>
                            <th>Username</th>  
                            <th>ID khuyển truy cập</th>
                            <th>Họ tên</th>  
                            <th>Email</th> 
                            <th>Giời tính</th> 
                            <th>Số điện thoại</th>  
                            <th>Địa chỉ</th>                          
                            <th>Option</th>
                        </tr>

                    </thead>
                    <tbody>
                       
                             <?php foreach ($users as $row) { ?>
                            
                            <tr >
                           
                               
                                <td class="col-sm-2 text-center"><?php echo $row->id ?> </td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->username ?></td>
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo ($row->permission_id == 1)?'Admin':'Member'; ?></td>
                                <td class="id_os" style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->fullname ?> </td>                       
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->email ?></td>
                                <td class="id_os" style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo ($row->gender ==1)?'Nam':'Nử'; ?> </td>                       
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->phone_number ?></td>
                                <td class="id_os" style="text-align: center; font-size: 1.2em;vertical-align:middle"> <?php echo $row->address ?> </td>                                                          
                                <td style="text-align: center; font-size: 1.2em;vertical-align:middle">
                                    <div class="row" style="padding-left: 15px">
                                        <a href="<?php echo site_url('admin/user/user_register/update/'.$row->id) ?>">
                                            <span class="glyphicon glyphicon-pencil fa-5x" aria-hidden="true"></span>
                                        </a> 
                                        <a href="<?php echo site_url('admin/user/user_register/delete/'.$row->id) ?>" onclick="return confirm('Are you sure you want to delete?')"> 
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