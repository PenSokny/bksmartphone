
      <?php if($this->session->userdata('username') =='') { ?>

      <form role="form" class="form-horizontal"  method="post" >
        
        <div class="form-group">

          <div class="row">
            <div class="col-sm-6">
                    <p><?php echo form_error('fullname'); ?></p>
                    <label for="comment">Họ tên bạn:</label>                      
                  <input type="text" name="fullname" value="<?php echo set_value('fullname'); ?>" class="form-control" id="inputEmail3" placeholder="Họ tện của bạn"/>  
                </div>
                <div class="col-sm-6">
                  <p><?php echo form_error('email'); ?></p>
                    <label for="comment">Email :</label>                      
                  <input type="email" name="email" value="<?php echo set_value('email'); ?>" class="form-control" id="inputEmail3" placeholder="Email của bạn"/>  
                </div>
              </div>    
          </div>
          <div class="form-group">
            <p><?php echo form_error('comment'); ?></p>
              <label for="comment">Bình luận:</label>
              <textarea class="form-control" rows="5" name="comment" id="comment" value="<?php echo set_value('comment'); ?>" placeholder="Nhập bình luận của bạn."></textarea>
          </div>
          <div hidden  class="form-group">
              <?php foreach ($infor->result() as $row) { ?>
                <div class="col-sm-8">
                    <input type="text" name="id_product" value="<?php echo $row->id ?>" class="form-control" id="inputEmail3" />
                </div>
              <?php } ?>
          </div>
          <div class="form-group">
            <button type="submit" name="submit" id="send_comment" class="btn btn-warning" style="width:70px ;height:30px;">Gửi</button>
          </div>
        </form>
      <?php }else{ ?>
      <form role="form" class="form-horizontal"  method="post" >
        
          <div class="form-group">
            <p><?php echo form_error('comment'); ?></p>
              <label for="comment">Bình luận:</label>
              <textarea class="form-control" rows="5" name="comment" id="comment" value="<?php echo set_value('comment'); ?>"  placeholder="Nhập bình luận của bạn."></textarea>
          </div>
          <div hidden  class="form-group">
              <?php foreach ($infor->result() as $row) { ?>
                <div class="col-sm-8">
                    <input type="text" name="id_product" value="<?php echo $row->id ?>" class="form-control" id="inputEmail3" />
                </div>
              <?php } ?>
          </div>
          <div class="form-group">
            <button type="submit" name="submit" id="send_comment" class="btn btn-warning" style="width:70px ;height:30px;">Gửi</button>
          </div>
        </form>

        <?php } ?>
        <div class="row" id="loadComment">
        
          <?php foreach ($register_comments as $data) { ?>
              <div><span class="imagename_comment"><?php echo $data['fullname'][0].' '?></span><span class="name_comment"><?php echo $data['fullname']?></span></div></p>
              <div style="text-indent: 2em;"><?php echo $data['comments'] ?></div></br>
          <?php } ?>
           <?php foreach ($not_register_comments as $data) { ?>
              <div><span class="imagename_comment"><?php echo $data['fullname'][0].' '?></span><span class="name_comment"><?php echo $data['fullname']?></span></div></p>
              <div style="text-indent: 2em;"><?php echo $data['comments'] ?></div></br>
          <?php } ?>
          <div class="pagination"><?php echo $pagination; ?></div> 
          
        </div>