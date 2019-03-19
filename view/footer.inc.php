<?PHP 
require_once('models/AboutUsModel.php');
$about_model = new AboutUsModel;
$about = $about_model->getAbout_us();
$about = $about[0];

require_once('models/TypesModel.php');
$type_model = new TypesModel;
$type = $type_model->getTypesBy();
// print_r($type) ;

require_once('models/LocationModel.php');
$location_model = new LocationModel;
$location = $location_model->getLocationBy();
// print_r($location) ;


require_once('models/NewsModel.php');
$news_model = new NewsModel;
$news = $news_model->getNewsByDESC();
// print_r($news) ;



?>

<script>
    function search_product_types(id) {
        var product_types_id = document.getElementById("product_types_ids_" + id).value;
        window.location = "property.php?action=detail&search=1&product_types_id=" + product_types_id;
    }

    function search_location(id) {
        var location_id = document.getElementById("search_location_" + id).value;
        window.location = "property.php?action=detail&search=1&location_id=" + location_id;
    }
</script>

<footer>
    <div class="container con-footer">

        <div class="row ">
            <div class="col-md-4 footer-panel">
                <div class="text-header-medium" style="color: #0175A4;">
                    ABOUT US
                </div>
                <br>
                <div class="cut-text-multi-about-footer2" style="font-size: 1rem;">
                    <?PHP if ($lan == "TH") {
                        echo $about['about_us_title_th'];
                    } else {
                        echo $about['about_us_title_en'];
                    } ?>
                </div>
                <br>
                <div class="cut-text-multi-about-footer2" style="font-size: 1rem;">
                    <?PHP if ($lan == "TH") {
                        echo $about['about_us_sub_title_th'];
                    } else {
                        echo $about['about_us_sub_title_en'];
                    } ?>
                </div>
            </div>
            <div class="col-md-5 footer-panel">
                <div class="row">
                    <div class="col-md-6">
                        <div class="text-header-medium">
                            PROPERTY TYPE
                        </div>
                        <div style="font-size: 0.95rem;">
                            <?PHP for ($i = 0; $i < count($type); $i++) {  ?>
                            <i class="fas fa-angle-right "></i>
                            <input type="hidden" id="product_types_ids_<?php echo $i; ?>" name="product_types_ids" value="<?php echo $type[$i]['product_types_id']; ?>">
                            <button class="footer-button" onclick="search_product_types('<?php echo $i; ?>');">
                                <?PHP if ($lan == "TH") {
                                    echo $type[$i]['product_types_name_th'];
                                } else {
                                    echo $type[$i]['product_types_name_en'];
                                } ?>
                            </button>
                            <br>
                            <?PHP 
                        } ?>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="text-header-medium">
                            LOCATIONS
                        </div>
                        <div style="font-size: 0.95rem;">
                            <?PHP for ($i = 0; $i < count($location); $i++) {  ?>
                            <input type="hidden" id="search_location_<?php echo $i; ?>" name="search_location" value="<?php echo $location[$i]['location_id']; ?>">
                            <button class="footer-button" onclick="search_location('<?php echo $i; ?>');">
                                <i class="fas fa-angle-right"></i>
                                <?PHP if ($lan == "TH") {
                                    echo $location[$i]['location_name_th'];
                                } else {
                                    echo $location[$i]['location_name_en'];
                                } ?>
                            </button>
                            <br>
                            <?PHP 
                        } ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 footer-panel">
                <div class="text-header-medium">
                    FROM THE BLOG
                </div>
                <div>

                    <div class="col-12 ">
                        <?PHP for ($i = 0; $i < 2; $i++) {
                            # code...
                            ?>
                        <div class="row">
                            <div class="col-4 col-img-footer">
                            <a href="news.php?action=read&news_read=<?PHP echo ($news[$i]['news_read']) ?>&id=<?PHP echo ($news[$i]['news_id']) ?>">

                                <img src="img_upload/news/<?PHP echo $news[$i]['news_img']; ?>" class="rounded float-left img-fluid img-size-footer " alt="...">
                           
                                </a>
                            </div>
                            <div class="col-8">
                                <a href="news.php?action=read&news_read=<?PHP echo ($news[$i]['news_read']) ?>&id=<?PHP echo ($news[$i]['news_id']) ?>">
                                    <?PHP if ($lan == 'TH') {
                                        # code...
                                        echo $news[$i]['news_name_th'];
                                    } else {
                                        echo $news[$i]['news_name_en'];
                                    }  ?>
                                </a>
                                <br>
                                <a href="news.php?action=read&news_read=<?PHP echo ($news[$i]['news_read']) ?>&id=<?PHP echo ($news[$i]['news_id']) ?>">

                                    <p class="light "><i class="far fa-clock light"></i>
                                        <?PHP echo  date("M d, Y ", strtotime($news[$i]['news_date'])); ?>
                                    </p>

                                </a>

                            </div>
                        </div>
                        <br>
                        <?PHP 
                    } ?>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <img class="size-img-footer" src="img_upload/footer/footer.jpg">
</footer>




<style>
    .col-img-footer {
        padding-right: 5;
        padding-left: 0;
    }

    .img-size-footer {
        max-width: 100%;
        height: 60;
    }

    .light {
        color: #0009;
    }
</style> 