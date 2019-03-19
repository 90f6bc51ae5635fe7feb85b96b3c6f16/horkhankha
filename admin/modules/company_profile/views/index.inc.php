<?php
date_default_timezone_set("Asia/Bangkok");
require_once('../models/CompanyProfileModel.php');

$path = "modules/company_profile/views/";
$img_path = "../img_upload/company_profile/";
$target_dir = "../img_upload/company_profile/";

$company_profile_model = new CompanyProfileModel;
$company_profile = $company_profile_model -> getCompanyProfile();
$id =($_GET['id']);

// echo "<pre>";
// print_r($company_profile);
// echo "</pre>";



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


    //-----------------ฟังก์ชั่นสุ่มตัวเลข----------------
    $numrand = (mt_rand());
    //-----------------------------------------------

    $id = 0;

    if( !isset($_GET['action']) ) {
        require_once($path.'edit.inc.php');
    } else if( $_GET['action'] == "edit") {
        
    if(isset($_POST['company_profile_id'])){
        $check = true;
        $data = [];
        $data['company_profile_id'] = $_POST['company_profile_id'];
        $data['company_profile_title_en'] = $_POST['company_profile_title_en'];
        $data['company_profile_sub_title_en'] = $_POST['company_profile_sub_title_en'];
        $data['company_profile_title_th'] = $_POST['company_profile_title_th'];
        $data['company_profile_sub_title_th'] = $_POST['company_profile_sub_title_th'];
        $data['company_profile_vision_th'] = $_POST['company_profile_vision_th'];
        $data['company_profile_vision_en'] = $_POST['company_profile_vision_en'];
        $data['company_profile_vision_detail_th'] = $_POST['company_profile_vision_detail_th'];
        $data['company_profile_vision_detail_en'] = $_POST['company_profile_vision_detail_en'];
        $data['company_profile_mission_th'] = $_POST['company_profile_mission_th'];
        $data['company_profile_mission_en'] = $_POST['company_profile_mission_en'];
        $data['company_profile_mission_detail_th'] = $_POST['company_profile_mission_detail_th'];
        $data['company_profile_mission_detail_en'] = $_POST['company_profile_mission_detail_en'];

        //------------------ฟังชั่นแก้ไขรูป--------------------
        if($_FILES['company_profile_img']['name'] == ""){
            $data['company_profile_img'] = $_POST['img_company_profile_o'];
        }else {
            //---------เอาชื่อไฟล์เก่าออกให้เหลือแต่นามสกุล----------
            $type = strrchr($_FILES['company_profile_img']['name'],".");
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
                $error_msg =  "Sorry, file already exists.";
                $check = false;
            }else if ($_FILES["company_profile_img"]["size"] > 5000000) {
                $error_msg = "Sorry, your file is too large.";
                $check = false;
            }else if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" ) {
                $error_msg = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
                $check = false;
            }else if (move_uploaded_file($_FILES["company_profile_img"]["tmp_name"], $target_file)) {

                //-----------------------------------
                $data['company_profile_img'] = $date.$newname;
                //-----------------------------------

                $target_file = $target_dir . $_POST["img_company_profile_o"];
                if($_POST["img_company_profile_o"] != 'default.png'){
                    if (file_exists($target_file)) {
                        unlink($target_file);
                    }
                }
            } else {
                $error_msg =  "Sorry, there was an error uploading your file.";
                $check = false;
            } 
        }
        //------------------------------------------------------------------------------
        if($check == false){
            ?>
<script>
alert('<?php echo $error_msg; ?>');
window.history.back();
</script>
<?php
        }else{
            if (!$data['company_profile_img']){
                $result = $company_profile_model-> editRoom($_POST['company_profile_id'],$data);
            }else{
                $result = $company_profile_model-> editRoomImg($_POST['company_profile_id'],$data);
            }

            if($result){
                ?>
<script>
window.location = "index.php?content=company_profile"
</script>
<?php
            }else{
                ?>
<script>
window.history.back();
</script>
<?php
            }
        }
    }else{
        require_once($path . 'edit.inc.php');
    }
    }
?>



<script>
CKEDITOR.replace("company_profile_sub_title_th", {
    filebrowserBrowseUrl: '../template/backend/ckfinder/ckfinder.html',
    filebrowserImageBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Images',
    filebrowserFlashBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Flash',
    filebrowserUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserImageUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
    filebrowserFlashUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
});


CKEDITOR.replace("company_profile_sub_title_en", {
    filebrowserBrowseUrl: '../template/backend/ckfinder/ckfinder.html',
    filebrowserImageBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Images',
    filebrowserFlashBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Flash',
    filebrowserUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserImageUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
    filebrowserFlashUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
});
// CKEDITOR.replace("company_profile_vision_detail_th", {
//     filebrowserBrowseUrl: '../template/backend/ckfinder/ckfinder.html',
//     filebrowserImageBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Images',
//     filebrowserFlashBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Flash',
//     filebrowserUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
//     filebrowserImageUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
//     filebrowserFlashUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
// });


// CKEDITOR.replace("company_profile_vision_detail_en", {
//     filebrowserBrowseUrl: '../template/backend/ckfinder/ckfinder.html',
//     filebrowserImageBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Images',
//     filebrowserFlashBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Flash',
//     filebrowserUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
//     filebrowserImageUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
//     filebrowserFlashUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
// });
// CKEDITOR.replace("company_profile_mission_detail_th", {
//     filebrowserBrowseUrl: '../template/backend/ckfinder/ckfinder.html',
//     filebrowserImageBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Images',
//     filebrowserFlashBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Flash',
//     filebrowserUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
//     filebrowserImageUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
//     filebrowserFlashUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
// });


// CKEDITOR.replace("company_profile_mission_detail_en", {
//     filebrowserBrowseUrl: '../template/backend/ckfinder/ckfinder.html',
//     filebrowserImageBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Images',
//     filebrowserFlashBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Flash',
//     filebrowserUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
//     filebrowserImageUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
//     filebrowserFlashUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
// });
</script>