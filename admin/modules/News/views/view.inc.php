<div class="row">
  <div class="col-lg-12">
    <div>
     <h1>ระบบจัดการข่าวสาร</h1>
     <h2>เพิ่ม ลบ เเก้ไข ข่าวสาร</h2> 
     <div align=right>
      <a href="?content=news&action=insert">
        <input class="button" type="submit" value="เพิ่ม">
      </a>
    </div> 
  </div>
  <table>
    <thead>
      <tr>
        <th>#</th>
        <th width="20%">รูปภาพ</th>    
        <th width="20%">ชื่อ TH</th>    
        <th width="20%">ชื่อ EN</th>    
        <th>เเก้ไข</th>
        <th>ลบ</th>
      </tr>
    </thead>
    <tbody>
    <?php 
      for($i=0; $i < count($news); $i++){
        ?>
        <tr>
          <td><?php echo $i+1; ?></td> 
          <td>
            <div align="center">
              <img  class="img-fluid" src="../img_upload/news/<?php if($news[$i]['news_img'] != "") echo $news[$i]['news_img']; else echo "default.png" ?>" height="72" width="auto"/>  
            </div>
          </td>  
          <td>
            <?php echo $news[$i]['news_name_th'];?>
          </td> 
          <td>
            <?php echo $news[$i]['news_name_en'];?>
          </td> 

          <td> 
            <a href="?content=news&action=update&id=<?php echo $news[$i]['news_id'];?>" style="font-size: 20px;">
              <i class="fa fa-pencil-square-o" aria-hidden="true" ></i>
            </a> 
          </td> 
          <td>  
            <a href="?content=news&action=delete&id=<?php echo $news[$i]['news_id'];?>" onclick="return confirm('คุณต้องการลบ?'
            );" style="color:red; font-size: 20px;">
              <i class="fa fa-times" aria-hidden="true"></i>
            </a> 
          </td>
        </tr>
        <?php } ?>
      </tbody>
    </table>
  </div>
</div>