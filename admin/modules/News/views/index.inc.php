<?php 
require_once('../models/newsModel.php');  

$path = "modules/news/views/";
 
$news_model = new newsModel;   

date_default_timezone_set("Asia/Bangkok");
$d1=date("d");
$d2=date("m");
$d3=date("Y");
$d4=date("H");
$d5=date("i");
$d6=date("s");
$date="$d1$d2$d3$d4$d5$d6";

$target_dir = "../img_upload/news/";

$news_id = $_GET['id'];
if($_GET['action'] == 'insert'){   
    
    require_once($path.'insert.inc.php');

}else if ($_GET['action'] == 'update'){  

    $news = $news_model->getnewsByID($news_id);  
    require_once($path.'update.inc.php');


}else if ($_GET['action'] == 'delete'){ 

    $news = $news_model->getnewsByID($news_id); 
    if($news['news_img']!=""){
        $target_file = $target_dir .$news['news_img'];
        if (file_exists($target_file)) {
            unlink($target_file);
        } 
    }
    $news_model->deletenewsByID($news_id); 
    ?>
    <script>window.location="index.php?content=news"</script>
    <?php
    
}else if ($_GET['action'] == 'add'){
       
    $check = true;
    $data = [];  
    $data['news_img'] = $_POST['news_img'];   
    $data['news_name_th'] = $_POST['news_name_th'];     
    $data['news_name_en'] = $_POST['news_name_en'];     
    $data['news_detail_th'] = $_POST['news_detail_th'];    
    $data['news_detail_en'] = $_POST['news_detail_en'];    

    $input_image = array("news_img");

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
        $check_result = $news_model->insertNews($data);
        if($check_result!=false){   
            ?>
            <script>window.location="index.php?content=news"</script>
            <?php
        }else{
            ?>  <script> window.location="index.php?content=news" </script> <?php
        }
    }  

}else if ($_GET['action'] == 'edit'){
        $news_id = $_POST['news_id'];
        $check = true;
        $data = [];  
        $data['news_img'] = $_POST['news_img'];   
        $data['news_name_th'] = $_POST['news_name_th'];     
        $data['news_name_en'] = $_POST['news_name_en'];     
        $data['news_detail_th'] = $_POST['news_detail_th'];    
        $data['news_detail_en'] = $_POST['news_detail_en'];    
    
        $input_image = array("news_img");

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
            $check_result = $news_model->updateNewsByID($news_id,$data);
            if($check_result!=false){
                ?>
                <script> window.location="index.php?content=news"</script>
                <?php
            }else{
                ?>  <script> window.history.back(); </script> <?php
            }
        } 
     
}else {
    $news = $news_model->getnewsBy();
    require_once($path.'view.inc.php');
}
?>


<script>
CKEDITOR.replace("news_detail_th", {
    filebrowserBrowseUrl: '../template/backend/ckfinder/ckfinder.html',
    filebrowserImageBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Images',
    filebrowserFlashBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Flash',
    filebrowserUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserImageUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
    filebrowserFlashUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
});


CKEDITOR.replace("news_detail_en", {
    filebrowserBrowseUrl: '../template/backend/ckfinder/ckfinder.html',
    filebrowserImageBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Images',
    filebrowserFlashBrowseUrl: '../template/backend/ckfinder/ckfinder.html?Type=Flash',
    filebrowserUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserImageUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
    filebrowserFlashUploadUrl: '../template/backend/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
});
</script>