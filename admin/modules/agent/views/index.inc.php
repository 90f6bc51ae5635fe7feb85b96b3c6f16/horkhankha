<?php
date_default_timezone_set("Asia/Bangkok");
require_once('../models/AgentModel.php');

$path = "modules/agent/views/";
$img_path = "../img_upload/agent/";

$agent_model = new AgentModel;
$agent = $agent_model -> getAgent();
$agent_head = $agent_model -> getAgentHead();

// echo "<pre>";
// print_r($agent_head);
// echo "</pre>";

// echo "<pre>";
// print_r($);
// echo "</pre>";


$type =($_GET['type']);
$id =($_GET['id']);
// ECHO "<PRE>";
// print_r( $Agent);
// ECHO "</PRE>";

$target_dir = "../img_upload/agent/";

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

    if( !isset($_GET['action']) ) {
        require_once($path.'view.inc.php');
    } else if( $_GET['action'] == "delete") {
        
        $target_file = $target_dir . $_POST['agent_img_o'];
        if (file_exists($target_file)) {
            unlink($target_file);
        }
        
        $result = $agent_model-> deleteAgent($id);
        require_once($path.'view.inc.php');
        ?>
<script>
window.location = "index.php?content=agent"
</script>
<?PHP
    } else if( $_GET['action'] == "edit_head") {
        $result = $agent_model-> editAgentHead($id, $_POST['agent_head_sub_title_th'], $_POST['agent_head_sub_title_en']);
        require_once($path.'view.inc.php');
        ?>
<script>
window.location = "index.php?content=agent"
</script>
<?PHP
    } else if( $_GET['action'] == "insert") {
    if(isset($_POST['agent_name_th'])){
        $check = true;
        $data = [];
        $data['agent_id'] = $_POST['agent_id'];
        $data['agent_name_th'] = $_POST['agent_name_th'];
        $data['agent_detail_th'] = $_POST['agent_detail_th'];
        $data['agent_name_en'] = $_POST['agent_name_en'];
        $data['agent_detail_en'] = $_POST['agent_detail_en'];
        $data['agent_detail_1_th'] = $_POST['agent_detail_1_th'];
        $data['agent_detail_1_en'] = $_POST['agent_detail_1_en'];
        $data['agent_detail_2_th'] = $_POST['agent_detail_2_th'];
        $data['agent_detail_2_en'] = $_POST['agent_detail_2_en'];

        //-----------------ฟังก์ชั่นสุ่มตัวเลข----------------
        $numrand = (mt_rand());
        //-----------------------------------------------
        if($_FILES['agent_img']['name'] == ""){
             $data['agent_img'] = $_POST['agent_img_o'];
        }else {
            //---------เอาชื่อไฟล์เก่าออกให้เหลือแต่นามสกุล----------
            $type = strrchr($_FILES['agent_img']['name'],".");
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
            }else if ($_FILES["agent_img"]["size"] > 5000000) {
                $error_msg = "ขอโทษด้วย. ไฟล์ของคุณต้องมีขนาดน้อยกว่า 5 MB.";
                $check = false;
            }else if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" ) {
                $error_msg = "ขอโทษด้วย. ระบบสามารถอัพโหลดไฟล์นามสกุล JPG, JPEG, PNG & GIF เท่านั้น.";
                $check = false;
            }else if (move_uploaded_file($_FILES["agent_img"]["tmp_name"], $target_file)) {
                //-----------------------------------
                $data['agent_img'] = $date.$newname;
                //-----------------------------------
                if( $_POST['agent_img_o'] != null){
                    $target_file = $target_dir . $_POST['agent_img_o'];
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
        if($check == false){
           
            ?>
<script>
alert('<?php echo $error_msg; ?>');
window.history.back();
</script>
<?php
          
        }else{
           
            $result = $agent_model-> addAgent($data);
           
            if($result){
                ?>
<script>
window.location = "index.php?content=agent"
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
        require_once($path . 'insert.inc.php');
    }
    
    } else if( $_GET['action'] == "edit") {
               
    if(isset($_POST['agent_id'])){
        $check = true;
        $data = [];
        $data['agent_id'] = $_POST['agent_id'];
        $data['agent_name_th'] = $_POST['agent_name_th'];
        $data['agent_detail_th'] = $_POST['agent_detail_th'];
        $data['agent_name_en'] = $_POST['agent_name_en'];
        $data['agent_detail_en'] = $_POST['agent_detail_en'];
        $data['agent_detail_1_th'] = $_POST['agent_detail_1_th'];
        $data['agent_detail_1_en'] = $_POST['agent_detail_1_en'];
        $data['agent_detail_2_th'] = $_POST['agent_detail_2_th'];
        $data['agent_detail_2_en'] = $_POST['agent_detail_2_en'];
        //-----------------ฟังก์ชั่นสุ่มตัวเลข----------------
        $numrand = (mt_rand());
        //-----------------------------------------------
        if($_FILES['agent_img']['name'] == ""){
             $data['agent_img'] = $_POST['agent_img_o'];
        }else {
            //---------เอาชื่อไฟล์เก่าออกให้เหลือแต่นามสกุล----------
            $type = strrchr($_FILES['agent_img']['name'],".");
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
            }else if ($_FILES["agent_img"]["size"] > 5000000) {
                $error_msg = "ขอโทษด้วย. ไฟล์ของคุณต้องมีขนาดน้อยกว่า 5 MB.";
                $check = false;
            }else if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" ) {
                $error_msg = "ขอโทษด้วย. ระบบสามารถอัพโหลดไฟล์นามสกุล JPG, JPEG, PNG & GIF เท่านั้น.";
                $check = false;
            }else if (move_uploaded_file($_FILES["agent_img"]["tmp_name"], $target_file)) {
                //-----------------------------------
                $data['agent_img'] = $date.$newname;
                //-----------------------------------
                if( $_POST['agent_img_o'] != null){
                    $target_file = $target_dir . $_POST['agent_img_o'];
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
        if($check == false){
           
            ?>
<script>
alert('<?php echo $error_msg; ?>');
window.history.back();
</script>
<?php
          
        }else{
           
            $result = $agent_model-> editAgent($_POST['agent_id'],$data);
           
            if($result){
                ?>
<script>
window.location = "index.php?content=agent"
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


CKEDITOR.replace("agent_head_sub_title_th", {
    filebrowserBrowseUrl: '../template/backend/ckfinder/ckfinder.html',
    filebrowserImageBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Images',
    filebrowserFlashBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Flash',
    filebrowserUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserImageUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
    filebrowserFlashUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
});
CKEDITOR.replace("agent_head_sub_title_en", {
    filebrowserBrowseUrl: '../template/backend/ckfinder/ckfinder.html',
    filebrowserImageBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Images',
    filebrowserFlashBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Flash',
    filebrowserUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserImageUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
    filebrowserFlashUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
});





</script>