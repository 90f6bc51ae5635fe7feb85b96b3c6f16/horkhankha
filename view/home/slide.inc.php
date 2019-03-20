<?php require_once('view/menu.inc.php') ?>
<section class="col-lg-12 no-padding" style="position: relative; ">


    <img class="size-img-slide-home" src="img_upload/home/1.jpg">
    <div class="overlay-slide-service">
            </div>

    <section class="slide no-padding slide-home ">

        <?PHP for ($i = 0; $i < count($slide); $i++) { ?>

        <div class="col-12">
            <div class="container">

                <div class="row">
                    <div class="col-7 text-slide-home">

                        <div class="slide-item">
                            <div class="slide-detail-home">
                                <div class="slide-header-home cut-text-multi-cut-text-multi-product-home">

                                    <?PHP if ($lan == "TH") {
                                        echo $slide[$i]['product_name_th'];
                                    } else {
                                        echo $slide[$i]['product_name_en'];
                                    } ?>

                                </div>
                                <div class="slide-text-detail cut-text-multi ">

                                    <?PHP if ($lan == "TH") {
                                        echo $slide[$i]['product_detail_th'];
                                    } else {
                                        echo $slide[$i]['product_detail_en'];
                                    } ?>

                                </div>
                                <div class="btn btn-slide">
                                    VIEW DETAIL
                                </div>
                                <a href="property.php" class="btn btn-slide2">
                                    SEE ALL PROPERTY
                                </a>
                            </div>
                        </div>



                    </div>
                    <div class="col-5 img-slide-home">
                        <img class="rounded-circle rounded-circle1 float-right" src="img_upload/product_image/<?PHP echo $slide[$i]['product_image_img']; ?>" alt="Los Angles">

                        <div class="rounded-circle on-img float-right">
                            <p class="price-slide1">
                                <?PHP echo number_format($slide[$i]['product_price'], 2); ?>
                            </p>
                            <p class="price-slide2">foe sale</p>
                            <!-- <img class="rounded-circle on-img float-right" src="" alt="Los Angles"> -->
                        </div>
                    </div>



                </div>

            </div>
        </div>
        <?PHP 
    } ?>

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

<!-- <div class="container">


      
    </div> -->

<script type="text/javascript">
    $(document).on('ready', function() {
        $(".slide").slick({
            arrows: false,
        });
    });
</script> 