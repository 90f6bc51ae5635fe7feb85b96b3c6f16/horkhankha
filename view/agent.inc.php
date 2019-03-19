<?php

require_once('models/AgentModel.php');  
$agent_agent_model = new AgentModel;
$agent_agent = $agent_agent_model-> getagent();
// echo "<pre>";
// print_r($agent_agent);
// echo "</pre>";
?>
<div class="container">
<section class="agent agent-background-img">
    <?PHP for($i=0;$i<count($agent_agent );$i++){ ?>
    <div class="col-12">
        <div class="row">
            <div class="col-md-5">
            <h2 style="color: #0175a4; font-weight: 600">Our Agent</h2>
            <h2 style="color: #70b247; font-weight: 600">You Can Trust</h2>
                <div>
                    <?PHP if($lng == "TH"){ echo $agent_agent[$i]['agent_name_th']; }else { echo $agent_agent[$i]['agent_name_en']; } ?>
                </div>
                <div class="agent-agent-detail">
                    <?PHP if($lng == "TH"){ echo $agent_agent[$i]['agent_detail_th']; }else { echo $agent_agent[$i]['agent_detail_en']; } ?>
                </div>
                <div class="row">
                </div>
            </div>
            <div class="col-md-7">
                <div>
                    <img class="img-fluid" src="img_upload/agent/<?PHP echo $agent_agent[$i]['agent_img'];?>">
                </div>
            </div>
        </div>
    </div>
    <?PHP } ?>
</section>
</div>

<style>
.agent-background-img {
    /* background-color: chocolate; */
    /* background-image: url('img_upload/agent/27022019115248-2201201916461622012019164616749792239.jpg'); */
}
.agent-agent-detail {
    display: -webkit-box;
    -webkit-line-clamp: 5;
    -webkit-box-orient: vertical;
    overflow: hidden;
}
</style>

<script type="text/javascript">
$(document).on('ready', function() {
    $(".agent").slick({
        arrows: false,
        dots: false,
        infinite: true,
        autoplay: true,
        autoplaySpeed: 5000,
    });
});
</script>