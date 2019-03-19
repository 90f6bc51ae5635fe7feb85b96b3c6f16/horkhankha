<?php 
require_once('../models/ServicesModel.php');  

$path = "modules/services/views/";
 
$services_model = new ServicesModel;   

$service_head = $services_model -> getServiceHead();
date_default_timezone_set("Asia/Bangkok");
$d1=date("d");
$d2=date("m");
$d3=date("Y");
$d4=date("H");
$d5=date("i");
$d6=date("s");
$date="$d1$d2$d3$d4$d5$d6";

$target_dir = "../img_upload/services/";

$services_id = $_GET['id'];
if($_GET['action'] == 'insert'){   
    
    require_once($path.'insert.inc.php');


    
} else if( $_GET['action'] == "edit_head") {
    $result = $services_model-> editServiceHead($id, $_POST['service_head_sub_title_th'], $_POST['service_head_sub_title_en']);
    // require_once($path.'view.inc.php');
    ?>
<script>
window.location = "index.php?content=services"
</script>
<?PHP



}else if ($_GET['action'] == 'update'){  

    $services = $services_model->getServicesByID($services_id);  
    require_once($path.'update.inc.php');


}else if ($_GET['action'] == 'delete'){ 

    $services = $services_model->getServicesByID($services_id); 
    if($services['services_img']!=""){
        $target_file = $target_dir .$services['services_img'];
        if (file_exists($target_file)) {
            unlink($target_file);
        } 
    }
    $services_model->deleteServicesByID($services_id); 
    ?>
    <script>window.location="index.php?content=services"</script>
    <?php
    
}else if ($_GET['action'] == 'add'){
       
    $check = true;
    $data = [];  
    $data['services_img'] = $_POST['services_img'];   
    $data['services_name_th'] = $_POST['services_name_th'];     
    $data['services_name_en'] = $_POST['services_name_en'];     
    $data['services_detail_th'] = $_POST['services_detail_th'];     
    $data['services_detail_en'] = $_POST['services_detail_en'];    

    $input_image = array("services_img");

    for($i = 0;$i<count($input_image);$i++){
        if($_FILES[$input_image[$i]]['name'] == ""){
            $data[$input_image[$i]] = ""; 
        }else {
            $target_file = $target_dir .$date.'-'.strtolower(basename($_FILES[$input_image[$i]]["name"]));
            $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
            // Check if file already exists
            if (file_exists($target_file)) {
                $error_msg =  "ขอโทษด้วย. มีไฟล์นี้ในระบบแล้ว";
                $check = false;
            }else if ($_FILES[$input_image[$i]]["size"] > 5000000) {
                $error_msg = "ขอโทษด้วย. ไฟล์ของคุณต้องมีขนาดน้อยกว่า 5 MB.";
                $check = false;
            }else if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" ) {
                $error_msg = "ขอโทษด้วย. ระบบสามารถอัพโหลดไฟล์นามสกุล JPG, JPEG, PNG & GIF เท่านั้น.";
                $check = false;
            }else if (move_uploaded_file($_FILES[$input_image[$i]]["tmp_name"], $target_file)) { 
                $data[$input_image[$i]] = $date.'-'.strtolower(basename($_FILES[$input_image[$i]]["name"]));
            } else {
                $error_msg =  "ขอโทษด้วย. ระบบไม่สามารถอัพโหลดไฟล์ได้.";
                $check = false;
            } 
        }
    } 

    if($check == false){
        ?>  <script>  alert('<?php echo $error_msg; ?>'); window.history.back(); </script>  <?php
    }else{
        $check_result = $services_model->insertServices($data);
        if($check_result!=false){   
            ?>
            <script>window.location="index.php?content=services"</script>
            <?php
        }else{
            ?>  <script> window.history.back(); </script> <?php
        }
    }  

}else if ($_GET['action'] == 'edit'){
        $services_id = $_POST['services_id'];
        $check = true;
        $data = [];  
        $data['services_img'] = $_POST['services_img'];   
        $data['services_name_th'] = $_POST['services_name_th'];    
        $data['services_name_en'] = $_POST['services_name_en'];    
        $data['services_detail_th'] = $_POST['services_detail_th'];    
        $data['services_detail_en'] = $_POST['services_detail_en'];     

        $input_image = array("services_img");

        for($i = 0;$i<count($input_image);$i++){
            if($_FILES[$input_image[$i]]['name'] == ""){
                $data[$input_image[$i]] = $_POST[$input_image[$i].'_o'];
            }else {
                $target_file = $target_dir .$date.'-'.strtolower(basename($_FILES[$input_image[$i]]["name"]));
                $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
                // Check if file already exists
                if (file_exists($target_file)) {
                    $error_msg =  "ขอโทษด้วย. มีไฟล์นี้ในระบบแล้ว";
                    $check = false;
                }else if ($_FILES[$input_image[$i]]["size"] > 5000000) {
                    $error_msg = "ขอโทษด้วย. ไฟล์ของคุณต้องมีขนาดน้อยกว่า 5 MB.";
                    $check = false;
                }else if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" ) {
                    $error_msg = "ขอโทษด้วย. ระบบสามารถอัพโหลดไฟล์นามสกุล JPG, JPEG, PNG & GIF เท่านั้น.";
                    $check = false;
                }else if (move_uploaded_file($_FILES[$input_image[$i]]["tmp_name"], $target_file)) {
                    $data[$input_image[$i]] = $date.'-'.strtolower(basename($_FILES[$input_image[$i]]["name"]));
                    if($_POST[$input_image[$i].'_o']!=""){
                        $target_file = $target_dir . $_POST[$input_image[$i].'_o'];
                        if (file_exists($target_file)&&$_POST[$input_image[$i].'_o']!='') {
                            unlink($target_file);
                        }
                    }
                } else {
                    $error_msg =  "ขอโทษด้วย. ระบบไม่สามารถอัพโหลดไฟล์ได้.";
                    $check = false;
                } 
            }
        } 

        if($check == false){
            ?>  <script>  alert('<?php echo $error_msg; ?>'); window.history.back(); </script>  <?php
        }else{
            $check_result = $services_model->updateServicesByID($services_id,$data);
            if($check_result!=false){
                ?>
                <script>window.location="index.php?content=services"</script>
                <?php
            }else{
                ?>  <script> window.history.back(); </script> <?php
            }
        } 
     
}else {
    $services = $services_model->getServicesBy();
    require_once($path.'view.inc.php');
}
?>


<script>
CKEDITOR.replace("services_detail_th", {
    filebrowserBrowseUrl: '../template/backend/ckfinder/ckfinder.html',
    filebrowserImageBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Images',
    filebrowserFlashBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Flash',
    filebrowserUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserImageUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
    filebrowserFlashUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
});


CKEDITOR.replace("services_detail_en", {
    filebrowserBrowseUrl: '../template/backend/ckfinder/ckfinder.html',
    filebrowserImageBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Images',
    filebrowserFlashBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Flash',
    filebrowserUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserImageUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
    filebrowserFlashUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
});
</script>