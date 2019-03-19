<?php

require_once("BaseModel.php");
class ServicesModel extends BaseModel{

    function __construct(){
        if(!static::$db){
            static::$db = mysqli_connect($this->host, $this->username, $this->password, $this->db_name);
        }
    }

    function getServicesBy(){
        $sql = "SELECT * 
        FROM tb_services 
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

    
    function getServiceHead() {
        $sql = " SELECT *
        FROM `tb_service_head`
        WHERE 1
        ORDER BY tb_service_head.service_head_id
        ";
        // echo "<pre>";
        // print_r($sql);
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
   
    function editServiceHead($service_head_id, $service_head_sub_title_th, $service_head_sub_title_en) {
        
        $sql = "UPDATE `tb_service_head` SET `service_head_sub_title_th` = '$service_head_sub_title_th', `service_head_sub_title_en` = '$service_head_sub_title_en' WHERE `tb_service_head`.`service_head_id` = 1 
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
    function getServicesByID($id){
        $sql = " SELECT * 
        FROM tb_services
        WHERE services_id = '$id' 
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
    
    function updateServicesByID($id,$data = []){
        
        $sql = " UPDATE tb_services SET  
        services_img = '".$data['services_img']."',
        services_name_th='".$data['services_name_th']."',
        services_name_en='".$data['services_name_en']."',
        services_detail_th='".$data['services_detail_th']."',
        services_detail_en='".$data['services_detail_en']."'
        WHERE services_id = $id "; 

        if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            return true;
        }else {
            return false;
        }
    }

    function insertServices($data=[]){
        $sql = " INSERT INTO tb_services( 
        services_img,
        services_name_th,
        services_name_en,
        services_detail_th,
        services_detail_en
        ) 
        VALUES ('". 
        $data['services_img']."','".
        $data['services_name_th']."','".
        $data['services_name_en']."','".
        $data['services_detail_th']."','".
        $data['services_detail_en']."'
        )";
    if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
        return mysqli_insert_id(static::$db);
   }else {
        return false;
    }
}


function deleteServicesByID($id){
    $sql = "DELETE FROM tb_services WHERE services_id = '$id' ";
    mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT); 
}




}
?>