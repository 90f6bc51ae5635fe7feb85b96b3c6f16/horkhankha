<?php

require_once("BaseModel.php");
class NewsModel extends BaseModel
{

    function __construct()
    {
        if (!static::$db) {
            static::$db = mysqli_connect($this->host, $this->username, $this->password, $this->db_name);
        }
    }

    function getNewsBy()
    {
        $sql = "SELECT * 
        FROM tb_news 
        ";
        if ($result = mysqli_query(static::$db, $sql, MYSQLI_USE_RESULT)) {
            $data = [];
            while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                $data[] = $row;
            }
            $result->close();
            return $data;
        }
    }

    function getNewsByKeyword($keyword)
    {
        $sql = "SELECT * 
        FROM tb_news 
        WHERE  
            tb_news.news_name_th LIKE ('%$keyword%')
        OR
            tb_news.news_name_en LIKE ('%$keyword%')
        ";
        if ($result = mysqli_query(static::$db, $sql, MYSQLI_USE_RESULT)) {
            $data = [];
            while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                $data[] = $row;
            }
            $result->close();
            return $data;
        }
    }
    function getNewsByLimit($start,$perpage, $keyword)
    {
        $sql = "SELECT * 
        FROM tb_news 
        WHERE  
            tb_news.news_name_th LIKE ('%$keyword%')
        OR
            tb_news.news_name_en LIKE ('%$keyword%')
        limit {$start} , {$perpage} 
        ";
        // echo $sql;
        if ($result = mysqli_query(static::$db, $sql, MYSQLI_USE_RESULT)) {
            $data = [];
            while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                $data[] = $row;
            }
            $result->close();
            return $data;
        }
    }
    function getNewsByDESC()
    {
        $sql = "SELECT * FROM `tb_news` ORDER BY `tb_news`.`news_id` DESC
        ";
        if ($result = mysqli_query(static::$db, $sql, MYSQLI_USE_RESULT)) {
            $data = [];
            while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                $data[] = $row;
            }
            $result->close();
            return $data;
        }
    }

    function getNewsReadMost()
    {
        $sql = "SELECT
                *
            FROM
                `tb_news`
            WHERE
                1
            ORDER BY
                `tb_news`.`news_read`
            DESC
        ";
        if ($result = mysqli_query(static::$db, $sql, MYSQLI_USE_RESULT)) {
            $data = [];
            while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                $data[] = $row;
            }
            $result->close();
            return $data;
        }
    }

    function getNewsByID($id)
    {
        $sql = " SELECT * 
        FROM tb_news
        WHERE news_id = '$id' 
        ";

        if ($result = mysqli_query(static::$db, $sql, MYSQLI_USE_RESULT)) {
            $data;
            while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                $data = $row;
            }
            $result->close();
            return $data;
        }
    }

    function updateNewsByID($id, $data = [])
    {

        $sql = " UPDATE tb_news SET  
        news_img = '" . $data['news_img'] . "',
        news_name_th='" . $data['news_name_th'] . "',
        news_name_en='" . $data['news_name_en'] . "',
        news_detail_th='" . $data['news_detail_th'] . "',
        news_detail_en='" . $data['news_detail_en'] . "'

        WHERE news_id = $id ";

        if (mysqli_query(static::$db, $sql, MYSQLI_USE_RESULT)) {
            return true;
        } else {
            return false;
        }
    }

    function updateNewsByRead($id, $news_read)
    {

        $sql = " UPDATE `tb_news` SET 

                `news_read` = '$news_read' 

                WHERE news_id = $id 
        ";
        // echo $sql;

        if (mysqli_query(static::$db, $sql, MYSQLI_USE_RESULT)) {
            return true;
        } else {
            return false;
        }
    }

    function insertNews($data = [])
    {
        $sql = " INSERT INTO tb_news( 
        news_img,
        news_name_th,
        news_name_en,
        news_detail_th,
        news_detail_en
        ) 
        VALUES ('" .
            $data['news_img'] . "','" .
            $data['news_name_th'] . "','" .
            $data['news_name_en'] . "','" .
            $data['news_detail_th'] . "','" .
            $data['news_detail_en'] . "'
        )";
        if (mysqli_query(static::$db, $sql, MYSQLI_USE_RESULT)) {
            return mysqli_insert_id(static::$db);
        } else {
            return false;
        }
    }


    function deleteNewsByID($id)
    {
        $sql = "DELETE FROM tb_news WHERE news_id = '$id' ";
        mysqli_query(static::$db, $sql, MYSQLI_USE_RESULT);
    }
}
 