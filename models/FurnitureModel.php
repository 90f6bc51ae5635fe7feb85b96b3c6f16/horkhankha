<?php

require_once("BaseModel.php");
class FurnitureModel extends BaseModel{

    function __construct(){
        if(!static::$db){
            static::$db = mysqli_connect($this->host, $this->username, $this->password, $this->db_name);
        }
    }

    function getFurnitureBy(){
        $sql = "SELECT * 
        FROM tb_furniture 
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
   
    function getFurnitureByID($id){
        $sql = " SELECT * 
        FROM tb_furniture
        WHERE furniture_id = '$id' 
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
    
    function updateFurnitureByID($id,$data = []){
        
        $sql = " UPDATE tb_furniture SET  
        furniture_name_th='".$data['furniture_name_th']."',
        furniture_name_en='".$data['furniture_name_en']."'
        WHERE furniture_id = $id "; 

        if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            return true;
        }else {
            return false;
        }
    }

    function insertFurniture($data=[]){
        $sql = " INSERT INTO tb_furniture( 
        furniture_name_th,
        furniture_name_en
        ) 
        VALUES ('". 
        $data['furniture_name_th']."','".
        $data['furniture_name_en']."'
        )";
    if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
        return mysqli_insert_id(static::$db);
   }else {
        return false;
    }
}


function deleteFurnitureByID($id){
    $sql = "DELETE FROM tb_furniture WHERE furniture_id = '$id' ";
    mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT); 
}




}
?>