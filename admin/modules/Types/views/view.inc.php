<div class="row">
    <div class="col-lg-12">
        <div>
            <h1>ระบบจัดการประเภทอสังหาริมทรัพย์</h1>
            <h2>เพิ่ม ลบ เเก้ไข ประเภทอสังหาริมทรัพย์</h2>
            <div align=right>
                <a href="?content=types&action=insert">
                    <input class="button" type="submit" value="เพิ่ม">
                </a>
            </div>
        </div>
        <table>
            <thead>
                <tr>
                    <th>#</th>
                    <th width="10%">รูปภาพ</th>
                    <th width="30%">ชื่อประเภทอสังหาริมทรัพย์ TH</th>
                    <th width="30%">ชื่อประเภทอสังหาริมทรัพย์ EN</th>
                    <th></th>
                    <th>เเก้ไข</th>
                    <th>ลบ</th>
                </tr>
            </thead>
            <tbody>
                <?php 
      for($i=0; $i < count($product_types); $i++){
        ?>
                <tr>
                    <td><?php echo $i+1; ?></td>
                    <td>
                        <div align="center">
                            <img class="img-fluid"
                                src="../img_upload/types/<?php if($product_types[$i]['product_types_img'] != "") echo $product_types[$i]['product_types_img']; else echo "default.png" ?>"
                                height="72" width="auto" />
                        </div>
                    </td>
                    <td>
                        <?php echo $product_types[$i]['product_types_name_th'];?>
                    </td>
                    <td>
                        <?php echo $product_types[$i]['product_types_name_en'];?>
                    </td>

                    <td>
                        <?PHP 
                    if ($product_types[$i]['product_types_popular'] == 1) {
                        ?>
                        <a
                            href="?content=types&action=recommened&id=<?PHP echo $product_types[$i]['product_types_id'];?>&recommened=0">
                            <i class="fa fa-star" aria-hidden="true"></i>
                        </a>
                        <?PHP        
            }else{
                ?>
                        <a
                            href="?content=types&action=recommened&id=<?PHP echo $product_types[$i]['product_types_id'];?>&recommened=1">
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                        </a>
                        <?PHP
            }
            ?>
                    </td>

                    <td>
                        <a href="?content=types&action=update&id=<?php echo $product_types[$i]['product_types_id'];?>"
                            style="font-size: 20px;">
                            <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                        </a>
                    </td>
                    <td>
                        <a href="?content=types&action=delete&id=<?php echo $product_types[$i]['product_types_id'];?>"
                            onclick="return confirm('คุณต้องการลบ?'
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