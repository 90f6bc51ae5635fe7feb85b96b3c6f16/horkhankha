<?php
require_once("BaseModel.php");

class SlideModel extends BaseModel{

    function __construct(){
        if(!static::$db){
            static::$db = mysqli_connect($this->host, $this->username, $this->password, $this->db_name);
            mysqli_set_charset(static::$db,"utf8");
        }
    }

    function getSlideBy(){
        $sql = " SELECT * 
        FROM tb_slide 
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

    function getSlideByID($id){
        $sql = " SELECT * 
        FROM tb_slide 
        WHERE slide_id = '$id' 
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

    function updateSlideByID($id,$data = []){

        $data['slide_title_th']=mysqli_real_escape_string(static::$db,$data['slide_title_th']);
        $data['slide_title_en']=mysqli_real_escape_string(static::$db,$data['slide_title_en']);
        $data['slide_description_th']=mysqli_real_escape_string(static::$db,$data['slide_description_th']);
        $data['slide_description_en']=mysqli_real_escape_string(static::$db,$data['slide_description_en']);
        $data['slide_image']=mysqli_real_escape_string(static::$db,$data['slide_image']);
        $sql = " UPDATE tb_slide SET 
        slide_title_th = '".$data['slide_title_th']."',
        slide_title_en = '".$data['slide_title_en']."',
        slide_description_th = '".$data['slide_description_th']."',
        slide_description_en = '".$data['slide_description_en']."',
        slide_image = '".$data['slide_image']."',
        updateby = '".$data['updateby']."',        
        lastupdate = NOW() 
        WHERE slide_id = $id "; 
// echo $sql;
        if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            return 1;
        }else {
            return 0;
        }
    }

    function insertSlide($data=[]){
        $sql = " INSERT INTO tb_slide(
        slide_title_th,
        slide_title_en,
        slide_description_th,
        slide_description_en,
        addby, 
        adddate
        ) VALUES ('".
        mysqli_real_escape_string(static::$db,$data['slide_title_th'])."','".
        mysqli_real_escape_string(static::$db,$data['slide_title_en'])."','".
        mysqli_real_escape_string(static::$db,$data['slide_description_th'])."','".
        mysqli_real_escape_string(static::$db,$data['slide_description_en'])."','".
        $data['addby']."',
        NOW()) ";
        if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            return mysqli_insert_id(static::$db);
        }else {
            return 0;
        }
    }
}
?>