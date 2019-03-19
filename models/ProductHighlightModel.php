<?php
require_once("BaseModel.php");

class ProductHighlightModel extends BaseModel{
    
    function __construct(){
        if(!static::$db){
            static::$db = mysqli_connect($this->host, $this->username, $this->password, $this->db_name);
            mysqli_set_charset(static::$db,"utf8");
        }
    }

        function getProductHighlightBy($product_id){
            $sql = " SELECT * 
            FROM tb_product_highlight
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
    
       
        function getProductHighlightByID($id){
            $sql = " SELECT * 
            FROM tb_product_highlight
            WHERE product_highlight_id = '$id'
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
    
        function insertProductHighlight($data=[]){
            $sql = " INSERT INTO tb_product_highlight( 
            product_highlight_name_th,
            product_highlight_name_en, 
            product_id, 
            product_highlight_img
            ) 
            VALUES ('". 
            $data['product_highlight_name_th']."','".
            $data['product_highlight_name_en']."','". 
            $data['product_id']."','". 
            $data['product_highlight_img']."'
            )";
            // echo $sql;
        if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            return mysqli_insert_id(static::$db);
       }else {
            return false;
        }
    }
    
    
    function deleteProductHighlightByID($id){
        $sql = "DELETE FROM tb_product_highlight WHERE product_highlight_id = '$id' ";
        mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT); 
    }
    
    
    
    
    }
    ?>