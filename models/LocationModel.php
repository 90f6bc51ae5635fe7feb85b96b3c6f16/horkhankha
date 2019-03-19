<?php

require_once("BaseModel.php");
class LocationModel extends BaseModel{

    function __construct(){
        if(!static::$db){
            static::$db = mysqli_connect($this->host, $this->username, $this->password, $this->db_name);
        }
    }

    function getLocationBy(){
        $sql = "SELECT * 
        FROM tb_location 
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
   
    function getLocationByID($id){
        $sql = " SELECT * 
        FROM tb_location
        WHERE location_id = '$id' 
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
    
    function updateLocationByID($id,$data = []){
        
        $sql = " UPDATE tb_location SET  
        location_name_th='".$data['location_name_th']."',
        location_name_en='".$data['location_name_en']."'
        WHERE location_id = $id "; 

        if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            return true;
        }else {
            return false;
        }
    }

    function insertLocation($data=[]){
        $sql = " INSERT INTO tb_location( 
        location_name_th,
        location_name_en
        ) 
        VALUES ('". 
        $data['location_name_th']."','".
        $data['location_name_en']."'
        )";
    if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
        return mysqli_insert_id(static::$db);
   }else {
        return false;
    }
}


function deleteLocationByID($id){
    $sql = "DELETE FROM tb_location WHERE location_id = '$id' ";
    mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT); 
}




}
?>