<?php require_once('view/menu.inc.php');





require_once('models/TypesModel.php');
$type_model = new TypesModel;
$type = $type_model->getTypesBy();
$type_popular = $type_model->getTypesByPopular();

// echo "<pre>";
// print_r($type) ;
// echo "</pre>";

require_once('models/LocationModel.php');
$location_model = new LocationModel;
$location = $location_model->getLocationBy();
// echo "<pre>";
// print_r($location) ;
// echo "</pre>";



require_once('models/ProductModel.php');
$product_model = new ProductModel;
$product = $product_model->getProducImgtBy();
$product_header = $product_model->getProductHeaderBy();
// echo "<pre>";
// print_r($product) ;
// echo "</pre>";




?>



    <section class="col-lg-12 no-padding" style="position: relative; height: 30vw;">
        <img class="size-img-slide" src="img_upload/home/3333.jpg">
            <div class="overlay-slide-service">
            </div>
    
    <section class="slide no-padding slide-home ">
        <div class="col-12">
            <div class="container">
                <div class="row">
                    <div class="col-10 margin-all-slide">

                        <div class="slide-item">
                            <div class="slide-detail-home">
                                <div class="slide-header-home">
                                    <h1 class="slide-cut-text-h1" style="color: #fff;">
                                        <?PHP if($lng == "TH"){ 
                                            echo $slide['slide_title_th']; 
                                        }else{ 
                                            echo $slide['slide_title_en'];
                                        } ?>
                                    </h1>
                                </div> 
                                <div class="slide-text-detail">
                                    <p class="slide-cut-text-p">
                                        <?PHP if($lng == "TH"){ 
                                            echo $slide['slide_description_th']; 
                                        }else{ 
                                            echo $slide['slide_description_en']; 
                                        } ?>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        
        
        </div>
        </div>

    </section>

    
    
    <script>
        function search() {
            var location_id = $("#location_id").val();
            var product_types_id = $("#product_types_id").val();
            var keyword = $("#keyword").val();
            window.location = "property.php?action=detail&search=1&location_id=" + location_id + "&product_types_id=" + product_types_id + "&keyword=" + keyword;
        }
    </script>

    






</section>

<script type="text/javascript">
$(document).on('ready', function() {
    $(".slide").slick({
        arrows: false,
    });
});
</script>