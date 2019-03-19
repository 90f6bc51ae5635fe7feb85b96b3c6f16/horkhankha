<?php
require_once('../models/ProductHighlightModel.php');

$path = "modules/product_highlight/views/";

$product_highlight_model = new ProductHighlightModel;

date_default_timezone_set("Asia/Bangkok");
$d1=date("d");
$d2=date("m");
$d3=date("Y");
$d4=date("H");
$d5=date("i");
$d6=date("s");
$date="$d1$d2$d3$d4$d5$d6";

$target_dir = "../img_upload/product_highlight/";

if(!isset($_GET['action'])){
    
    $product_id = $_GET['product_id'];
    $product_highlight = $product_highlight_model->getProductHighlightBy($product_id);
    require_once($path.'view.inc.php');
    
}else if ($_GET['action'] == 'delete'){
    
    $product_highlight_id = $_GET['id'];
    $product_id = $_GET['product_id'];

    $product_highlight = $product_highlight_model->getProductHighlightByID($product_highlight_id);
    $target_file = $target_dir .$product_highlight['product_highlight_img'];
    if (file_exists($target_file)) {
        unlink($target_file);
    }
	$product_highlight = $product_highlight_model->deleteProductHighlightByID($product_highlight_id);
    ?> <script>window.location="index.php?content=product_highlight&product_id=<?php echo $product_id; ?>"; </script> <?php

}else if ($_GET['action'] == 'add'){
        $product_id = $_POST['product_id'];
        $check = true;
        $data = [];
        $data['product_id'] = $_POST['product_id'];
        $data['product_highlight_name_th'] = $_POST['product_highlight_name_th'];
        $data['product_highlight_name_en'] = $_POST['product_highlight_name_en'];
            
        if($_FILES['product_highlight_img']['name'] == ""){
            $data['product_highlight_img'] = "";
        }else {
            $target_file = $target_dir .$date.'-'.strtolower(basename($_FILES['product_highlight_img']['name']));
            $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
            // Check if file already exists
            if (file_exists($target_file)) {
                $error_msg =  "ขอโทษด้วย. มีไฟล์นี้ในระบบแล้ว";
                $check = false;
            }else if ($_FILES['product_highlight_img']["size"] > 5000000) {
                $error_msg = "ขอโทษด้วย. ไฟล์ของคุณต้องมีขนาดน้อยกว่า 5 MB.";
                $check = false;
            }else if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" ) {
                $error_msg = "ขอโทษด้วย. ระบบสามารถอัพโหลดไฟล์นามสกุล JPG, JPEG, PNG & GIF เท่านั้น.";
                $check = false;
            }else if (move_uploaded_file($_FILES['product_highlight_img']["tmp_name"], $target_file)) {
                $data['product_highlight_img'] = $date.'-'.strtolower(basename($_FILES['product_highlight_img']['name']));
            } else {
                $error_msg =  "ขอโทษด้วย. ระบบไม่สามารถอัพโหลดไฟล์ได้.";
                $check = false;
            }
        }

        if($check == false){
            ?>  <script>  alert('<?php echo $error_msg; ?>'); 
            <? echo  $product_id  ?>
            window.location="index.php?content=product_highlight&product_id=<?php echo $product_id; ?>"; 
            </script>  <?php
        }else{
            $result = $product_highlight_model->insertProductHighlight($data);
            ?> <script>
            window.location="index.php?content=product_highlight&product_id=<?php echo $product_id; ?>"; 
            </script> <?php
        }
}else{

    $product_highlight = $product_highlight_model->getProductHighlightBy($product_id);
    require_once($path.'view.inc.php');
    
}
?>