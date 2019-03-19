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

    <div class="box-search-home-index">
        <div class="shadow-lg" style="background-color: white;">
            <div class="row m-0 py-4">
                <div class="col-sm-12 col-md-3 py-md-0 py-sm-3">
                    <div class="text-left">
                        <div class="">
                            <select class="form-control  custom-select" id="location_id" name="location_id">
                                <option value=""> Location</option>
                                <?PHP for ($i = 0; $i < count($location); $i++) {  ?>
                                <option value="<?PHP echo $location[$i]['location_id']; ?>" <?PHP if ($_GET['location_id'] == $location[$i]['location_id']) {
                                                                                                echo 'selected';
                                                                                            } ?>>
                                    <?PHP if ($lan == 'TH') {
                                        echo $location[$i]['location_name_th'];
                                    } else {
                                        echo $location[$i]['location_name_en'];
                                    } ?>
                                </option>
                                <?PHP 
                            } ?>
                            </select>

                        </div>
                    </div>
                </div>

                <div class="col-sm-12 col-md-3 py-md-0 py-sm-3">
                    <div class="text-left">
                        <div class="">
                            <select class="form-control  custom-select" id="product_types_id" name="product_types_id">
                                <option value=""> Property type</option>
                                <?PHP for ($i = 0; $i < count($type); $i++) {  ?>
                                <option value="<?PHP echo $type[$i]['product_types_id']; ?>" <?PHP if ($_GET['product_types_id'] == $type[$i]['product_types_id']) {
                                                                                                echo 'selected';
                                                                                            } ?>>
                                    <?PHP if ($lan == 'TH') {
                                        echo $type[$i]['product_types_name_th'];
                                    } else {
                                        echo $type[$i]['product_types_name_en'];
                                    } ?>
                                </option>
                                <?PHP 
                            } ?>

                            </select>

                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-3 py-md-0 py-sm-3 ">
                    <div class="text-left">
                        <div class="">
                            <div class="">
                                <input id="keyword" name="keyword" class="form-control" value="<?PHP echo $_GET['keyword']; ?>" placeholder="KEYWORD" />
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <button onclick="search();" type="submit" class="btn btn-search">
                        SEARCH
                    </button>
                </div>
            </div>
        </div>

    </div>

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