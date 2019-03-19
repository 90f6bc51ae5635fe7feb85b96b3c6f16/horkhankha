<script>
    //---------ฟังชั่นแสดงรูป----------------
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#_img').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        } else {
            $('#_img').attr('src', '../img_upload/company_profile/default.png');
        }
    }
</script>

<form id="form_target" role="form" method="post" action="index.php?content=company_profile&action=edit" enctype="multipart/form-data">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h1>
                        หน้าแก้ไขข้อมูล Profile
                        <?PHP echo $company_profile[$id]['company_profile_title_en'];  ?>
                    </h1>
                </div>
                <div class="col-lg-6">
                    <button type="submit" class="btn btn-primary float-right">แก้ไข</button>
                </div>
            </div>
        </div>
        <div class="card-body">
            <input type="hidden" id="company_profile_img_o" name="company_profile_img_o" value="<?php echo  $company_profile[$id]['company_profile_img']; ?>" />
            <input type="hidden" id="company_profile_id" name="company_profile_id" value="<?php echo  $company_profile[$id]['company_profile_id']; ?>" />

            <div class="col-12">

            </div>
            <div class="row ">
                <div class="col-lg-3">
                    <div class="form-group" align="center">
                        <img id="_img" width="400" src="<?PHP 
                                                        if ($company_profile[$id]['company_profile_img'] != "" || $company_profile[$id]['company_profile_img'] != null) {
                                                            echo $img_path . $company_profile[$id]['company_profile_img'];
                                                        } else {
                                                            echo $img_path . 'default.png';
                                                        }  ?> " class="img-fluid" alt="">
                        <input accept=".jpg , .png" type="file" id="company_profile_img" name="company_profile_img" class="form-control" style="margin: 14px 0 0 0 ;" onChange="readURL(this);" value="<?php echo  $company_profile[$id]['company_profile_img']; ?>">
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="row">
                        <!-- 
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Profile Title EN <font color="#F00"><b>*</b></font></label>
                                <input id="company_profile_title_en" name="company_profile_title_en" class="form-control"
                                    value="<?PHP echo $company_profile[$id]['company_profile_title_en']; ?>" />
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Profile Title TH <font color="#F00"><b>*</b></font></label>
                                <input id="company_profile_title_th" name="company_profile_title_th" class="form-control"
                                    value="<?PHP echo $company_profile[$id]['company_profile_title_th']; ?>" />
                            </div>
                        </div> -->

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Vision Title EN <font color="#F00"><b>*</b></font></label>
                                <input id="company_profile_vision_en" name="company_profile_vision_en" class="form-control" value="<?PHP echo $company_profile[$id]['company_profile_vision_en']; ?>" />
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Vision Title TH <font color="#F00"><b>*</b></font></label>
                                <input id="company_profile_vision_th" name="company_profile_vision_th" class="form-control" value="<?PHP echo $company_profile[$id]['company_profile_vision_th']; ?>" />
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Vision Sub Title EN<font color="#F00"><b>*</b></font></label>
                                <textarea class="form-control " id="company_profile_vision_detail_en" name="company_profile_vision_detail_en" rows="4"><?PHP echo $company_profile[$id]['company_profile_vision_detail_en']; ?></textarea>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Vision Sub Title TH<font color="#F00"><b>*</b></font></label>
                                <textarea class="form-control " id="company_profile_vision_detail_th" name="company_profile_vision_detail_th" rows="4"><?PHP echo $company_profile[$id]['company_profile_vision_detail_th']; ?></textarea>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Mission Title EN <font color="#F00"><b>*</b></font></label>
                                <input id="company_profile_mission_en" name="company_profile_mission_en" class="form-control" value="<?PHP echo $company_profile[$id]['company_profile_mission_en']; ?>" />
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Mission Title TH <font color="#F00"><b>*</b></font></label>
                                <input id="company_profile_mission_th" name="company_profile_mission_th" class="form-control" value="<?PHP echo $company_profile[$id]['company_profile_mission_th']; ?>" />
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Mission Sub Title EN<font color="#F00"><b>*</b></font></label>
                                <textarea class="form-control " id="company_profile_mission_detail_en" name="company_profile_mission_detail_en" rows="4"><?PHP echo $company_profile[$id]['company_profile_mission_detail_en']; ?></textarea>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Mission Sub Title TH<font color="#F00"><b>*</b></font></label>
                                <textarea class="form-control " id="company_profile_mission_detail_th" name="company_profile_mission_detail_th" rows="4"><?PHP echo $company_profile[$id]['company_profile_mission_detail_th']; ?></textarea>
                            </div>
                        </div>

                    </div>

                </div>
            </div>





            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <label>Profile Sub Title EN<font color="#F00"><b>*</b></font></label>
                        <textarea class="form-control " id="company_profile_sub_title_en" name="company_profile_sub_title_en" rows="4"><?PHP echo $company_profile[$id]['company_profile_sub_title_en']; ?></textarea>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="form-group">
                        <label>Profile Sub Title TH<font color="#F00"><b>*</b></font></label>
                        <textarea class="form-control " id="company_profile_sub_title_th" name="company_profile_sub_title_th" rows="4"><?PHP echo $company_profile[$id]['company_profile_sub_title_th']; ?></textarea>
                    </div>
                </div>
            </div>





        </div>
    </div>


</form> 