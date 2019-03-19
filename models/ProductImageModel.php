<?php
require_once("BaseModel.php");

class ProductImageModel extends BaseModel{
    
    function __construct(){
        if(!static::$db){
            static::$db = mysqli_connect($this->host, $this->username, $this->password, $this->db_name);
            mysqli_set_charset(static::$db,"utf8");
        }
    }

        function getProductImageBy($product_id){
            $sql = " SELECT * 
            FROM tb_product_image
            WHERE product_id = '$product_id'
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
    
       
        function getProductImageByID($id){
            $sql = " SELECT * 
            FROM tb_product_image
            WHERE product_image_id = '$id'
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
    
        function insertProductImage($data=[]){
            $sql = " INSERT INTO tb_product_image( 
            product_id,
            product_image_img
            )
            VALUES ('". 
            $data['product_id']."','".
            $data['product_image_img']."'
            )";
            // echo $sql;
        if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            return mysqli_insert_id(static::$db);
       }else {
            return false;
        }
    }
    
    
    function deleteProductImageByID($id){
        $sql = "DELETE FROM tb_product_image WHERE product_image_id = '$id' ";
        mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT); 
    }
    
    
    
    
    }
    ?>