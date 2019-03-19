<?php

require_once("BaseModel.php");
class TypesModel extends BaseModel{

    function __construct(){
        if(!static::$db){
            static::$db = mysqli_connect($this->host, $this->username, $this->password, $this->db_name);
        }
    }

    function getTypesBy(){
        $sql = "SELECT * 
        FROM tb_product_types 
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

    function getTypesByPopular(){
        $sql = "SELECT * FROM `tb_product_types` WHERE `product_types_popular` = 1
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
    
    
    function editTypeRecommened($product_types_id,$product_types_popular) {
      
        $sql = "UPDATE `tb_product_types` 
        SET `product_types_popular` = '$product_types_popular' 
        WHERE `tb_product_types`.`product_types_id` = '$product_types_id'
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

   
    function getTypesByID($id){
        $sql = " SELECT * 
        FROM tb_product_types
        WHERE product_types_id = '$id' 
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
    
    function updateTypesByID($id,$data = []){
        
        $sql = " UPDATE tb_product_types SET  
        product_types_img = '".$data['product_types_img']."',
        product_types_name_th='".$data['product_types_name_th']."',
        product_types_name_en='".$data['product_types_name_en']."'
        WHERE product_types_id = $id "; 

        if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            return true;
        }else {
            return false;
        }
    }

    function insertTypes($data=[]){
        $sql = " INSERT INTO tb_product_types( 
        product_types_img,
        product_types_name_th,
        product_types_name_en
        ) 
        VALUES ('". 
        $data['product_types_img']."','".
        $data['product_types_name_th']."','".
        $data['product_types_name_en']."'
        )";
    if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
        return mysqli_insert_id(static::$db);
   }else {
        return false;
    }
}


    function deleteTypesByID($id){
        $sql = "DELETE FROM tb_product_types 
        WHERE product_types_id = '$id' ";
        mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT); 
    }
}
?>