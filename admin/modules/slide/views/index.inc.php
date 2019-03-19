<?php

date_default_timezone_set("Asia/Bangkok");
require_once('../models/SlideModel.php');

$path = "modules/slide/views/";

$slide_model = new SlideModel;

$img_path = "../img_upload/slide/"; 
$target_dir  = "../img_upload/slide/"; 
    //---------------------ฟังก์ชั่นวันที่------------------------------------
    date_default_timezone_set("Asia/Bangkok");
    $d1=date("d");
    $d2=date("m");
    $d3=date("Y");
    $d4=date("H");
    $d5=date("i");
    $d6=date("s");
    $date="$d1$d2$d3$d4$d5$d6";
    //---------------------------------------------------------------------




if(isset($_GET['id'])){
    $slide_id = $_GET['id'];
}
if(!isset($_GET['action'])){
    $slide = $slide_model->getSlideBy();
    require_once($path.'view.inc.php');
}else if ($_GET['action'] == 'update'){
        $slide = $slide_model->getSlideByID($slide_id);
    require_once($path.'update.inc.php');
}else if ($_GET['action'] == 'edit'){
    if(isset($_POST['slide_id'])){
        $check = true;
        $data = [];
        $data['slide_title_th'] = $_POST['slide_title_th'];
        $data['slide_title_en'] = $_POST['slide_title_en'];
        $data['slide_description_th'] = $_POST['slide_description_th'];
        $data['slide_description_en'] = $_POST['slide_description_en'];
        $data['updateby'] = $login_user['user_id'];

        //-----------------ฟังก์ชั่นสุ่มตัวเลข----------------
        $numrand = (mt_rand());
        //-----------------------------------------------
        if($_FILES['slide_image']['name'] == ""){
             $data['slide_image'] = $_POST['slide_image_o'];
        }else {
            //---------เอาชื่อไฟล์เก่าออกให้เหลือแต่นามสกุล----------
            $type = strrchr($_FILES['slide_image']['name'],".");
            //--------------------------------------------------
            //-----ตั้งชื่อไฟล์ใหม่โดยเอาเวลาไว้หน้าชื่อไฟล์เดิม---------
            $newname = $date.$numrand.$type;
            $path_copy=$path.$newname;
            $path_link=$target_dir.$newname;
            //-------------------------------------------------
            $target_file = $target_dir .$date.$newname;
             $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
            // Check if file already exists
            if (file_exists($target_file)) {
                $error_msg =  "ขอโทษด้วย. มีไฟล์นี้ในระบบแล้ว";
                $check = false;
            }else if ($_FILES["slide_image"]["size"] > 5000000) {
                $error_msg = "ขอโทษด้วย. ไฟล์ของคุณต้องมีขนาดน้อยกว่า 5 MB.";
                $check = false;
            }else if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" ) {
                $error_msg = "ขอโทษด้วย. ระบบสามารถอัพโหลดไฟล์นามสกุล JPG, JPEG, PNG & GIF เท่านั้น.";
                $check = false;
            }else if (move_uploaded_file($_FILES["slide_image"]["tmp_name"], $target_file)) {
                //-----------------------------------
                $data['slide_image'] = $date.$newname;
                //-----------------------------------
                if( $_POST['slide_image_o'] != null){
                    $target_file = $target_dir . $_POST['slide_image_o'];
                    if (file_exists($target_file)) {
                        unlink($target_file);
                    }
                }
            } else {
                $error_msg =  "ขอโทษด้วย. ระบบไม่สามารถอัพโหลดไฟล์ได้.";
                $check = false;
            } 
        }
        //------------------------------------------------------------------------------

        $result = $slide_model->updateSlideByID($_POST['slide_id'],$data);

        if($result){
            ?> <script>window.location="index.php?content=slide"</script> <?php
        }else{
            ?>  <script> window.history.back(); </script> <?php
        }
    }else{
        ?> <script> window.history.back(); </script> <?php
    }
}else{
    $slide = $slide_model->getSlideBy();
    require_once($path.'view.inc.php');
}
?>