<?PHP
 
   if($content=="types" || $content=="" ){

    require_once("modules/types/views/index.inc.php");
   
   }else if($content=="furniture"){
   
      require_once("modules/furniture/views/index.inc.php");

   }else if($content=="location"){
   
      require_once("modules/location/views/index.inc.php");

   }else if($content=="product"){
   
      require_once("modules/product/views/index.inc.php");

   }else if($content=="product_highlight"){
   
      require_once("modules/product_highlight/views/index.inc.php");

   }else if($content=="product_image"){
   
      require_once("modules/product_image/views/index.inc.php");
   
   }else if($content=="news"){
   
      require_once("modules/news/views/index.inc.php");
   
   }else if($content=="contact"){
   
      require_once("modules/contact/views/index.inc.php");
   
   }else if($content=="contact_us"){
   
      require_once("modules/contact_us/views/index.inc.php");
   
   }else if($content=="about_us"){
   
      require_once("modules/about_us/views/index.inc.php");
   
   }else if($content=="company_profile"){
   
      require_once("modules/company_profile/views/index.inc.php");
   
   }else if($content=="agent"){
   
      require_once("modules/agent/views/index.inc.php");
   
   }else if($content=="user"){
   
      require_once("modules/user/views/index.inc.php");
   
   }else if($content=="services"){
   
      require_once("modules/services/views/index.inc.php");


   }else if($content=="page"){
   
      require_once("modules/page/views/index.inc.php");
   

   }else if($content=="slide"){
   
      require_once("modules/slide/views/index.inc.php");
   
   }else {
      
      require_once("modules/Types/views/index.inc.php");

   }

?>