<div class="row">
    <div class="col-lg-12">
        <div>
            <h1>ระบบจัดการบริการ</h1>
            <h2>เพิ่ม ลบ เเก้ไข บริการ</h2>
        </div>





<!-- 
        <h2> แก้ไข Sub Title</h2>
        <hr>
        <form id="form_target" role="form" method="post" action="index.php?content=services&action=edit_head">
            <button type="submit" name="" id="" class="btn btn-warning btn-xs float-right" btn-block>แก้ไข</button>
            <div class="row">


                <div class="col-lg-6">
                    <div class="form-group">
                        <label> </label>
                        <textarea class="form-control " id="service_head_sub_title_th" name="service_head_sub_title_th" rows="6"><?PHP echo $service_head[0]['service_head_sub_title_th']; ?></textarea>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <label> </label>
                        <textarea class="form-control " id="service_head_sub_title_en" name="service_head_sub_title_en" rows="6"><?PHP echo $service_head[0]['service_head_sub_title_en']; ?></textarea>
                    </div>
                </div>

                <div class="col-lg-6">
                </div>
            </div>
        </form>
        <hr> -->




        <div align=right>
            <a href="?content=services&action=insert">
                <input class="button" type="submit" value="เพิ่ม">
            </a>
        </div>


        <table>
            <thead>
                <tr>
                    <th>#</th>
                    <th width="20%">รูปภาพ</th>
                    <th width="20%">ชื่อบริการ TH</th>
                    <th width="20%">ชื่อบริการ EN</th>
                    <th>เเก้ไข</th>
                    <th>ลบ</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                for ($i = 0; $i < count($services); $i++) {
                  ?>
                <tr>
                    <td><?php echo $i + 1; ?></td>
                    <td>
                        <div align="center">
                            <img class="img-fluid" src="../img_upload/services/<?php if ($services[$i]['services_img'] != "") echo $services[$i]['services_img'];
                                                                                else echo "default.png" ?>" height="72" width="auto" />
                        </div>
                    </td>
                    <td>
                        <?php echo $services[$i]['services_name_th']; ?>
                    </td>
                    <td>
                        <?php echo $services[$i]['services_name_en']; ?>
                    </td>
                    <td>
                        <a href="?content=services&action=update&id=<?php echo $services[$i]['services_id']; ?>" style="font-size: 20px;">
                            <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                        </a>
                    </td>
                    <td>
                        <a href="?content=services&action=delete&id=<?php echo $services[$i]['services_id']; ?>" onclick="return confirm('คุณต้องการลบ?'
            );" style="color:red; font-size: 20px;">
                            <i class="fa fa-times" aria-hidden="true"></i>
                        </a>
                    </td>
                </tr>
                <?php 
              } ?>
            </tbody>
        </table>
    </div>
</div>





<script>
    CKEDITOR.replace("service_head_sub_title_th", {
        filebrowserBrowseUrl: '../template/backend/ckfinder/ckfinder.html',
        filebrowserImageBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Images',
        filebrowserFlashBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Flash',
        filebrowserUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
        filebrowserImageUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
        filebrowserFlashUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
    });
    CKEDITOR.replace("service_head_sub_title_en", {
        filebrowserBrowseUrl: '../template/backend/ckfinder/ckfinder.html',
        filebrowserImageBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Images',
        filebrowserFlashBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Flash',
        filebrowserUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
        filebrowserImageUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
        filebrowserFlashUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
    });
</script> 