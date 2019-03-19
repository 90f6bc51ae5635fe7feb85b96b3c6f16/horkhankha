<?php

require_once('models/AgentModel.php');  
$agent_slide_model = new AgentModel;
$agent_slide = $agent_slide_model-> getagent();
// echo "<pre>";
// print_r($agent_slide);
// echo "</pre>";
?>

<section class="slide slide-background-img">

    <?PHP for($i=0;$i<count($agent_slide );$i++){ ?>
    <div class="col-12">
        <div class="row">
            <div class="col-md-4">
            <div>
            Our Agent
            </div>
                <div>
                    <?PHP if($lng == "TH"){ echo $agent_slide[$i]['agent_name_th']; }else { echo $agent_slide[$i]['agent_name_en']; } ?>
                </div>
                <div class="slide-agent-detail">
                    <?PHP if($lng == "TH"){ echo $agent_slide[$i]['agent_detail_th']; }else { echo $agent_slide[$i]['agent_detail_en']; } ?>
                </div>
                <div class="row">
                </div>
            </div>
            <div class="col-md-8">
                <div>
                    <img class="img-fluid-agent" src="img_upload/agent/<?PHP echo $agent_slide[$i]['agent_img'];?>">
                </div>
            </div>
        </div>
    </div>
    <?PHP } ?>
   
</section>


<style>
.slide-background-img {
    /* background-color: chocolate; */
    /* background-image: url('img_upload/agent/27022019115248-2201201916461622012019164616749792239.jpg'); */
}
.slide-agent-detail {
    display: -webkit-box;
    -webkit-line-clamp: 5;
    -webkit-box-orient: vertical;
    overflow: hidden;
}
</style>

<script type="text/javascript">
$(document).on('ready', function() {
    $(".slide").slick({
        arrows: false,
        dots: false,
        infinite: true,
        autoplay: true,
        autoplaySpeed: 5000,
    });
});
</script>