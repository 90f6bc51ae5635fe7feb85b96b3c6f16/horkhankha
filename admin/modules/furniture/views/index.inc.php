<?php 
require_once('../models/FurnitureModel.php');  

$path = "modules/furniture/views/";
 
$furniture_model = new FurnitureModel;   

date_default_timezone_set("Asia/Bangkok");
$d1=date("d");
$d2=date("m");
$d3=date("Y");
$d4=date("H");
$d5=date("i");
$d6=date("s");
$date="$d1$d2$d3$d4$d5$d6";

$target_dir = "../img_upload/furniture/";

$furniture_id = $_GET['id'];
if($_GET['action'] == 'insert'){   
    
    require_once($path.'insert.inc.php');

}else if ($_GET['action'] == 'update'){  

    $furniture = $furniture_model->getFurnitureByID($furniture_id);  
    require_once($path.'update.inc.php');


}else if ($_GET['action'] == 'delete'){ 

    $furniture = $furniture_model->getfurnitureByID($furniture_id); 
    if($furniture['furniture_name_en']!=""){
        $target_file = $target_dir .$furniture['furniture_name_en'];
        if (file_exists($target_file)) {
            unlink($target_file);
        } 
    }
    $furniture_model->deleteFurnitureByID($furniture_id); 
    ?>
    <script>window.location="index.php?content=furniture"</script>
    <?php
    
}else if ($_GET['action'] == 'add'){
       
    $check = true;
    $data = [];  
    $data['furniture_name_en'] = $_POST['furniture_name_en'];   
    $data['furniture_name_th'] = $_POST['furniture_name_th'];     

    if($check == false){
        ?>  <script>  alert('<?php echo $error_msg; ?>'); window.history.back(); </script>  <?php
    }else{
        $check_result = $furniture_model->insertFurniture($data);
        if($check_result!=false){   
            ?>
            <script>window.location="index.php?content=furniture"</script>
            <?php
        }else{
            ?>  <script> window.history.back(); </script> <?php
        }
    }  

}else if ($_GET['action'] == 'edit'){
        $furniture_id = $_POST['furniture_id'];
        $check = true;
        $data = [];  
        $data['furniture_name_en'] = $_POST['furniture_name_en'];   
        $data['furniture_name_th'] = $_POST['furniture_name_th'];     
    
        if($check == false){
            ?>  <script>  alert('<?php echo $error_msg; ?>'); window.history.back(); </script>  <?php
        }else{
            $check_result = $furniture_model->updateFurnitureByID($furniture_id,$data);
            if($check_result!=false){
                ?>
                <script>window.location="index.php?content=furniture"</script>
                <?php
            }else{
                ?>  <script> window.history.back(); </script> <?php
            }
        } 
     
}else {
    $furniture = $furniture_model->getFurnitureBy();
    require_once($path.'view.inc.php');
}
?>