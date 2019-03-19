<?php

require_once("BaseModel.php");
class ProductModel extends BaseModel{

    function __construct(){
        if(!static::$db){
            static::$db = mysqli_connect($this->host, $this->username, $this->password, $this->db_name);
        }
    }

    function getProductBy(){
        $sql = " SELECT * FROM `tb_product` 
        LEFT JOIN tb_product_types 
        ON tb_product.product_types_id = tb_product_types.product_types_id 
        WHERE 1

        GROUP BY tb_product.product_id
        ";
        if ($result = mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            $data = [];
            while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
                $data[] = $row;
            }
            $result->close();
            return $data;
        }
    }
    function getProductByPopular(){
        $sql = "SELECT * FROM `tb_product` 
        LEFT JOIN tb_product_image 
        ON tb_product.product_id = tb_product_image.product_id 
        WHERE product_popular = 1
        GROUP BY tb_product.product_id
        ";
        if ($result = mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            $data = [];
            while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
                $data[] = $row;
            }
            $result->close();
            return $data;
        }
    }
    
    
    function editProductRecommened($product_id,$product_popular) {
      
        $sql = "UPDATE `tb_product` 
        SET `product_popular` = '$product_popular' 
        WHERE `tb_product`.`product_id` = '$product_id'
        ";
        // echo "<pre>";
        // print_r( $sql);
        // echo "</pre>";

        if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            return 1;
        }else {
            return 0;
        }
    }

    function getProductLimitBy(){
        $sql = " SELECT * FROM `tb_product` 
        WHERE 1 
        ORDER BY `product_id` 
        DESC LIMIT 1
        ";
        if ($result = mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            $data = [];
            while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
                $data[] = $row;
            }
            $result->close();
            return $data;
        }
    }
    
    function getProductByType($product_types_id){
        $sql = " SELECT
            *
            FROM
                `tb_product`
                  
            LEFT JOIN 
                tb_product_image 
            ON 
                tb_product.product_id = tb_product_image.product_id 
            WHERE
                `product_types_id`  = '$product_types_id'
                
            GROUP BY 
                tb_product.product_id
        ";
        
        // echo "<pre>";
        // print_r( $sql) ;
        // echo "</pre>";
        if ($result = mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            $data = [];
            while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
                $data[] = $row;
            }
            $result->close();
            return $data;
        }
    }

    function getProductByProduct($product_id){
        $sql = " SELECT
            *
            FROM
                `tb_product`
            LEFT JOIN
                tb_location
            ON
                tb_product.location_id = tb_location.location_id
                LEFT JOIN
                tb_furniture
            ON
                tb_product.furniture_id = tb_furniture.furniture_id
                
            LEFT JOIN 
                tb_product_image 
            ON 
                tb_product.product_id = tb_product_image.product_id 
            WHERE
                tb_product.product_id  = '$product_id'
            GROUP BY 
                tb_product.product_id
        ";
        
        // echo "<pre>";
        // print_r( $sql) ;
        // echo "</pre>";
        if ($result = mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            $data = [];
            while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
                $data[] = $row;
            }
            $result->close();
            return $data;
        }
    }
    
    function getProducSearchBy($location_id, $product_types_id, $product_name){
        
        $sql = " SELECT * 
        FROM `tb_product` 
        LEFT JOIN tb_location  ON tb_product.location_id = tb_location.location_id 
        LEFT JOIN tb_product_types  ON tb_product.product_types_id = tb_product_types.product_types_id 
        LEFT JOIN tb_product_image ON tb_product.product_id = tb_product_image.product_id
        WHERE  
                tb_location.location_id LIKE ('%$location_id%')
            AND tb_product.product_types_id LIKE ('%$product_types_id%') 
            AND
        ( 
                tb_product.product_name_th LIKE ('%$product_name%') 
            OR  tb_product.product_name_en LIKE ('%$product_name%') 
        ) 
        GROUP BY tb_product.product_id
        ";
        // echo "<pre>";
        // print_r( $sql) ;
        // echo "</pre>";
        if ($result = mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            $data = [];
            while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
                $data[] = $row;
            }
            $result->close();
            return $data;
        }
    }

    function getProducImgtBy(){
        $sql = " SELECT * FROM `tb_product`
        LEFT JOIN tb_location ON tb_product.location_id = tb_location.location_id
        LEFT JOIN tb_furniture ON tb_product.furniture_id = tb_furniture.furniture_id
        LEFT JOIN tb_product_image ON tb_product.product_id = tb_product_image.product_id 
        WHERE 1
        GROUP BY  tb_product.product_id
        ORDER BY tb_product.product_id
    ";

        // $sql = " SELECT * FROM `tb_product` 
        // LEFT JOIN tb_product_image ON tb_product.product_id = tb_product_image.product_id 
        // WHERE 1 
        // GROUP BY tb_product.product_id
        // ORDER BY tb_product.product_id
        // ";
        if ($result = mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            $data = [];
            while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
                $data[] = $row;
            }
            $result->close();
            return $data;
        }
    }

    function getProducImgtById($product_id){
        $sql = "SELECT
                *
            FROM
                `tb_product_image`
            WHERE
                `product_id` = '$product_id'

        ";
        if ($result = mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            $data = [];
            while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
                $data[] = $row;
            }
            $result->close();
            return $data;
        }
    }

    function getProducHightlightById($product_id){
        $sql = "SELECT
                *
            FROM
                `tb_product_highlight`
            WHERE
                product_id = '$product_id'

        ";
        if ($result = mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            $data = [];
            while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
                $data[] = $row;
            }
            $result->close();
            return $data;
        }
    }

    function getProductHeaderBy(){
        $sql = "SELECT
        *
    FROM
        `tb_product_header`
    WHERE
        1
        ORDER BY tb_product_header.product_header_id
        ";
        if ($result = mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            $data = [];
            while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
                $data[] = $row;
            }
            $result->close();
            return $data;
        }
    }
   
    function getProductByID($id){
        $sql = " SELECT * 
        FROM tb_product
        WHERE product_id = '$id'
        ";

        if ($result = mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            $data;
            while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
                $data = $row;
            }
            $result->close();
            return $data;
        }
    }

    
    function editProductHead($product_header_id, $product_header_th, $product_header_en, $product_header_detail_th, $product_header_detail_en) {
        
        $sql = "UPDATE `tb_product_header` SET 
        `product_header_th` = '$product_header_th', 
        `product_header_en` = '$product_header_en' ,
        `product_header_detail_th` = '$product_header_detail_th', 
        `product_header_detail_en` = '$product_header_detail_en' 
        WHERE `tb_product_header`.`product_header_id` = 1 
        ";
        // echo "<pre>";
        // print_r( $sql);
        // echo "</pre>";

        if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            return 1;
        }else {
            return 0;
        }
    }
    
    function updateProductByID($id,$data = []){    
    
        $sql = " UPDATE tb_product SET  
        product_name_th='".$data['product_name_th']."', 
        product_name_en='".$data['product_name_en']."', 
        product_price='".$data['product_price']."', 
        product_detail_th='".$data['product_detail_th']."',
        product_detail_en='".$data['product_detail_en']."',
        furniture_id='".$data['furniture_id']."',
        location_id='".$data['location_id']."',
        product_bedroom='".$data['product_bedroom']."',
        product_bathroom='".$data['product_bathroom']."',
        product_latitude='".$data['product_latitude']."',
        product_longitude='".$data['product_longitude']."',
        product_types_id='".$data['product_types_id']."' 
        WHERE product_id = $id "; 

        if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            return true;
        }else {
            return false;
        }
    }

    function insertProduct($data=[]){
        $sql = " INSERT INTO tb_product( 
        product_name_th, 
        product_name_en, 
        product_price, 
        product_detail_th,
        product_detail_en,
        furniture_id,
        product_bathroom,
        product_latitude,
        product_longitude,
        product_bedroom,
        location_id,
        product_types_id 
        ) 
        VALUES ('". 
        $data['product_name_th']."','". 
        $data['product_name_en']."','". 
        $data['product_price']."','". 
        $data['product_detail_th']."' ,'".
        $data['product_detail_en']."' ,'".
        $data['furniture_id']."' ,'".
        $data['product_bathroom']."' ,'".
        $data['product_latitude']."' ,'".
        $data['product_longitude']."' ,'".
        $data['product_bedroom']."' ,'".
        $data['location_id']."' ,'".
        $data['product_types_id']."'
        )";
        // echo $sql;
    if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
        return mysqli_insert_id(static::$db);
   }else {
        return false;
    }
}


    function deleteProductByID($id){
        $sql = "DELETE FROM tb_product WHERE product_id = '$id' ";
        mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT); 
    }
}
?>