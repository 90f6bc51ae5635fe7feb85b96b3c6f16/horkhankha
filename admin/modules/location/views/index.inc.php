<?php 
require_once('../models/LocationModel.php');  

$path = "modules/location/views/";
 
$location_model = new LocationModel;   

date_default_timezone_set("Asia/Bangkok");
$d1=date("d");
$d2=date("m");
$d3=date("Y");
$d4=date("H");
$d5=date("i");
$d6=date("s");
$date="$d1$d2$d3$d4$d5$d6";

$target_dir = "../img_upload/location/";

$location_id = $_GET['id'];
if($_GET['action'] == 'insert'){   
    
    require_once($path.'insert.inc.php');

}else if ($_GET['action'] == 'update'){  

    $location = $location_model->getLocationByID($location_id);  
    
    require_once($path.'update.inc.php');


}else if ($_GET['action'] == 'delete'){ 

    $location = $location_model->getlocationByID($location_id); 
    if($location['location_name_en']!=""){
        $target_file = $target_dir .$location['location_name_en'];
        if (file_exists($target_file)) {
            unlink($target_file);
        } 
    }
    $location_model->deleteLocationByID($location_id); 
    ?>
    <script>window.location="index.php?content=location"</script>
    <?php
    
}else if ($_GET['action'] == 'add'){
       
    $check = true;
    $data = [];  
    $data['location_name_en'] = $_POST['location_name_en'];   
    $data['location_name_th'] = $_POST['location_name_th'];     

    if($check == false){
        ?>  <script>  alert('<?php echo $error_msg; ?>'); window.history.back(); </script>  <?php
    }else{
        $check_result = $location_model->insertLocation($data);
        if($check_result!=false){   
            ?>
            <script>window.location="index.php?content=location"</script>
            <?php
        }else{
            ?>  <script> window.history.back(); </script> <?php
        }
    }  

}else if ($_GET['action'] == 'edit'){
        $location_id = $_POST['location_id'];
        $check = true;
        $data = [];  
        $data['location_name_en'] = $_POST['location_name_en'];   
        $data['location_name_th'] = $_POST['location_name_th'];     
    
        if($check == false){
            ?>  <script>  alert('<?php echo $error_msg; ?>'); window.history.back(); </script>  <?php
        }else{
            $check_result = $location_model->updateLocationByID($location_id,$data);
            if($check_result!=false){
                ?>
                <script>window.location="index.php?content=location"</script>
                <?php
            }else{
                ?>  <script> window.history.back(); </script> <?php
            }
        } 
     
}else {
    $location = $location_model->getLocationBy();
    require_once($path.'view.inc.php');
}
?>