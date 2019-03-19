<div class="row">
  <div class="col-lg-12">
    <div>
     <h1>ระบบจัดการ Location</h1>
     <h2>เพิ่ม ลบ เเก้ไข</h2> 
     <div align=right>
      <a href="?content=location&action=insert">
        <input class="button" type="submit" value="เพิ่ม">
      </a>
    </div> 
  </div>
  <table>
    <thead>
      <tr>
        <th>#</th>
        <th width="20%">ชื่อ TH</th>    
        <th width="20%">ชื่อ EN</th>    
        <th>เเก้ไข</th>
        <th>ลบ</th>
      </tr>
    </thead>
    <tbody>
    <?php 
      for($i=0; $i < count($location); $i++){
        ?>
        <tr>
          <td><?php echo $i+1; ?></td> 
          <td>
            <?php echo $location[$i]['location_name_th'];?>
          </td> 
          <td>
            <?php echo $location[$i]['location_name_en'];?>
          </td> 

          <td> 
            <a href="?content=location&action=update&id=<?php echo $location[$i]['location_id'];?>" style="font-size: 20px;">
              <i class="fa fa-pencil-square-o" aria-hidden="true" ></i>
            </a> 
          </td> 
          <td>  
            <a href="?content=location&action=delete&id=<?php echo $location[$i]['location_id'];?>" onclick="return confirm('คุณต้องการลบ?'
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