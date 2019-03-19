<?php 
date_default_timezone_set("Asia/Bangkok");
require_once('../models/ProductModel.php');
require_once('../models/LocationModel.php');
require_once('../models/FurnitureModel.php');
require_once('../models/TypesModel.php');

$path = "modules/product/views/";

$product_model = new ProductModel;
$product_types_model = new TypesModel;
$location_model = new LocationModel;
$furniture_model = new FurnitureModel;

$product_limit = $product_model-> getProductLimitBy();
$product_limit = $product_limit[0][product_id];
$product = $product_model-> getProductBy();

// print_r(count($product_limit));
$d1 = date("d");
$d2 = date("m");
$d3 = date("Y");
$d4 = date("H");
$d5 = date("i");
$d6 = date("s");
$date = "$d1$d2$d3$d4$d5$d6";

$target_dir = "../img_upload/product/";

$product_id = $_GET['id'];
if ($_GET['action'] == 'insert') {

    $type = $product_types_model->getTypesBy();
    $location = $location_model->getLocationBy();
    $furniture = $furniture_model->getFurnitureBy();

    require_once($path . 'insert.inc.php');
} else if ($_GET['action'] == 'update') {

    $type = $product_types_model->getTypesBy();
    $location = $location_model->getLocationBy();
    $furniture = $furniture_model->getFurnitureBy();

    $product = $product_model->getProductByID($product_id);
    require_once($path . 'update.inc.php');
} else if ($_GET['action'] == 'delete') {

    $product = $product_model->getProductByID($product_id);
    if ($product['product_img'] != "") {
        $target_file = $target_dir . $product['product_img'];
        if (file_exists($target_file)) {
            unlink($target_file);
        }
    }
    $product_model->deleteProductByID($product_id);
    ?>
<script>
window.location = "index.php?content=product"
</script>
<?php

} else if ($_GET['action'] == 'add') {

    $check = true;
    $data = [];
    $data['product_types_id'] = $_POST['product_types_id'];
    $data['furniture_id'] = $_POST['furniture_id'];
    $data['location_id'] = $_POST['location_id'];
    $data['product_name_th'] = $_POST['product_name_th'];
    $data['product_name_en'] = $_POST['product_name_en'];
    $data['product_price'] = $_POST['product_price'];
    $data['product_detail_th'] = $_POST['product_detail_th'];
    $data['product_detail_en'] = $_POST['product_detail_en'];
    $data['product_bedroom'] = $_POST['product_bedroom'];
    $data['product_bathroom'] = $_POST['product_bathroom'];
    $data['product_latitude'] = $_POST['product_latitude'];
    $data['product_longitude'] = $_POST['product_longitude'];

    if ($check == false) {
        ?> <script>
alert('<?php echo $error_msg; ?>');
window.history.back();
</script>
<?php

} else {
    $check_result = $product_model->insertProduct($data);
    if ($check_result != false) {

        $product = $product_model-> getProductLimitBy();

        ?>

<script>
window.location = "index.php?content=product&action=img"
</script>

<?php

} else {
    ?> <script>
window.history.back();
</script> <?php

        }
    }
} else if ($_GET['action'] == "edit_head") {

    $result = $product_model->editProductHead($id, $_POST['product_header_th'], $_POST['product_header_en'], $_POST['product_header_detail_th'], $_POST['product_header_detail_en']);
    require_once($path . 'view.inc.php');
    ?>
<script>
window.location = "index.php?content=product"
</script>
<?PHP







} else if ($_GET['action'] == "img") {
?>
<script>
window.location = "index.php?content=product_image&product_id=<?php echo $product_limit; ?>"
</script>
<?PHP
} else if ($_GET['action'] == 'edit') {

    $product_id = $_POST['product_id'];
    $check = true;
    $data = [];
    $data['product_types_id'] = $_POST['product_types_id'];
    $data['furniture_id'] = $_POST['furniture_id'];
    $data['location_id'] = $_POST['location_id'];
    $data['product_name_th'] = $_POST['product_name_th'];
    $data['product_name_en'] = $_POST['product_name_en'];
    $data['product_price'] = $_POST['product_price'];
    $data['product_detail_th'] = $_POST['product_detail_th'];
    $data['product_detail_en'] = $_POST['product_detail_en'];
    $data['product_bedroom'] = $_POST['product_bedroom'];
    $data['product_bathroom'] = $_POST['product_bathroom'];
    $data['product_latitude'] = $_POST['product_latitude'];
    $data['product_longitude'] = $_POST['product_longitude'];

    if ($check == false) {
        ?>
<script>
alert('<?php echo $error_msg; ?>');
window.history.back();
</script> <?php

    } else {
        $check_result = $product_model->updateProductByID($product_id, $data);
        if ($check_result != false) {
            ?>
            <script>
            window.location = "index.php?content=product"
            </script>

            <?php

        } else {
            ?>
            <script>
            window.history.back();
            </script>
            <?php

        }
    }
} else if( $_GET['action'] == "recommened") {
      
    $product = $product_model-> editProductRecommened($_GET['id'], $_GET['recommened']);        

?>
<script>
window.location = "index.php?content=product"
</script>
<?PHP



} else {
    $product = $product_model->getProductBy();
    $product_header = $product_model->getProductHeaderBy();
    require_once($path . 'view.inc.php');
}
?>