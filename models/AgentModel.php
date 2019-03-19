<?php
require_once("BaseModel.php");

class AgentModel extends BaseModel{
    
    function __construct(){
        if(!static::$db){
            static::$db = mysqli_connect($this->host, $this->username, $this->password, $this->db_name);
            mysqli_set_charset(static::$db,"utf8");
        }
    }

    function getagent() {
        $sql = " SELECT *
        FROM `tb_agent`
        WHERE 1
        ORDER BY tb_agent.agent_id
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

    function getagentHead() {
        $sql = " SELECT *
        FROM `tb_agent_head`
        WHERE 1
        ORDER BY tb_agent_head.agent_head_id
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

    function deleteAgent($agent_id) {
        $sql = "DELETE 
        FROM `tb_agent` 
        WHERE `tb_agent`.`agent_id` = '$agent_id'
        ";
        // echo "<pre>";
        // print_r();
        // echo "</pre>";
       

        if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            return mysqli_insert_id(static::$db);
        }else {
            return 0;
        }
    }
    
    function editAgentHead($agent_head_id, $agent_head_sub_title_th, $agent_head_sub_title_en) {
        
        $sql = "UPDATE `tb_agent_head` SET `agent_head_sub_title_th` = '$agent_head_sub_title_th', `agent_head_sub_title_en` = '$agent_head_sub_title_en' WHERE `tb_agent_head`.`agent_head_id` = 1 
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
    
    function editAgent($agent_id,$data = []) {
        $data['agent_img']=mysqli_real_escape_string(static::$db,$data['agent_img']);
        $data['agent_name_th']=mysqli_real_escape_string(static::$db,$data['agent_name_th']);
        $data['agent_detail_th']=mysqli_real_escape_string(static::$db,$data['agent_detail_th']);
        $data['agent_name_en']=mysqli_real_escape_string(static::$db,$data['agent_name_en']);
        $data['agent_detail_en']=mysqli_real_escape_string(static::$db,$data['agent_detail_en']);
        $data['agent_detail_1_th']=mysqli_real_escape_string(static::$db,$data['agent_detail_1_th']);
        $data['agent_detail_1_en']=mysqli_real_escape_string(static::$db,$data['agent_detail_1_en']);
        $data['agent_detail_2_th']=mysqli_real_escape_string(static::$db,$data['agent_detail_2_th']);
        $data['agent_detail_2_en']=mysqli_real_escape_string(static::$db,$data['agent_detail_2_en']);

        $sql = "UPDATE `tb_agent` 
        SET 
        `agent_name_th` = '".$data['agent_name_th']."', 
        `agent_name_en` = '".$data['agent_name_en']."', 
         `agent_img` = '".$data['agent_img']."', 
         `agent_detail_th` = '".$data['agent_detail_th']."',
         `agent_detail_en` = '".$data['agent_detail_en']."'
        WHERE `tb_agent`.`agent_id` = '$agent_id'
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

    function addAgent($data = []) {
        $data['agent_name']=mysqli_real_escape_string(static::$db,$data['agent_name']);
        $data['agent_img']=mysqli_real_escape_string(static::$db,$data['agent_img']);
        $data['agent_detail']=mysqli_real_escape_string(static::$db,$data['agent_detail']);
        $data['agent_detail_1_th']=mysqli_real_escape_string(static::$db,$data['agent_detail_1_th']);
        $data['agent_detail_1_en']=mysqli_real_escape_string(static::$db,$data['agent_detail_1_en']);
        $data['agent_detail_2_th']=mysqli_real_escape_string(static::$db,$data['agent_detail_2_th']);
        $data['agent_detail_2_en']=mysqli_real_escape_string(static::$db,$data['agent_detail_2_en']);


        $sql = "INSERT INTO `tb_agent` (
            `agent_id`, 
            `agent_name_th`, 
            `agent_name_en`, 
            `agent_img`, 
            `agent_detail_th`,
            `agent_detail_en`
            )
        VALUES (
            NULL, 
            '".$data['agent_name_th']."', 
            '".$data['agent_name_en']."', 
            '".$data['agent_img']."' ,
            '".$data['agent_detail_th']."',
            '".$data['agent_detail_en']."'
        )
        ";
        echo "<pre>";
        print_r( $sql);
        echo "</pre>";

        if (mysqli_query(static::$db,$sql, MYSQLI_USE_RESULT)) {
            return 1;
        }else {
            return 0;
        }
    }

}
?>