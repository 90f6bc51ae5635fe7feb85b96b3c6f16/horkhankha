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
        $('#_img').attr('src', '../img_upload/contact_us/default.jpg');
    }
}
</script>

<form id="form_target" role="form" method="post" action="index.php?content=contact_us&action=edit"
    enctype="multipart/form-data">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h1>
                        หน้าแก้ไขข้อมูล Contact Us
                        <?PHP echo $contact_us[$id]['contact_us_title'];  ?>
                    </h1>
                </div>
                <div class="col-lg-6">
                    <button type="submit" class="btn btn-primary float-right">แก้ไข</button>
                </div>
            </div>
        </div>
        <div class="card-body">
            <input type="hidden" id="contact_us_img_o" name="contact_us_img_o"
                value="<?php echo  $contact_us[$id]['contact_us_img']; ?>" />
            <input type="hidden" id="contact_us_id" name="contact_us_id"
                value="<?php echo  $contact_us[$id]['contact_us_id']; ?>" />



            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="form-group">
                            <label> Title TH<font color="#F00"><b>*</b></font></label>
                            <input id="contact_us_title_th" name="contact_us_title_th" class="form-control"
                                value="<?PHP echo $contact_us[$id]['contact_us_title_th'];?>" />
                            <p class="help-block"></p>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="form-group">
                            <label> Title EN<font color="#F00"><b>*</b></font></label>
                            <input id="contact_us_title_en" name="contact_us_title_en" class="form-control"
                                value="<?PHP echo $contact_us[$id]['contact_us_title_en'];?>" />
                            <p class="help-block"></p>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="form-group">
                            <label> Facebook <font color="#F00"><b>*</b></font></label>
                            <input id="contact_us_facebook" name="contact_us_facebook" class="form-control"
                                value="<?PHP echo $contact_us[$id]['contact_us_facebook'];?>" />
                            <p class="help-block"></p>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="form-group">
                            <label> Tel <font color="#F00"><b>*</b></font></label>
                            <input id="contact_us_tel" name="contact_us_tel" class="form-control"
                                value="<?PHP echo $contact_us[$id]['contact_us_tel'];?>" />
                            <p class="help-block"></p>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="form-group">
                            <label> Fax <font color="#F00"><b>*</b></font></label>
                            <input id="contact_us_fax" name="contact_us_fax" class="form-control"
                                value="<?PHP echo $contact_us[$id]['contact_us_fax'];?>" />
                            <p class="help-block"></p>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="form-group">
                            <label> Address TH<font color="#F00"><b>*</b></font></label>
                            <input id="contact_us_address_th" name="contact_us_address_th" class="form-control"
                                value="<?PHP echo $contact_us[$id]['contact_us_address_th'];?>" />
                            <p class="help-block"></p>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="form-group">
                            <label> Address 1 TH<font color="#F00"><b>*</b></font></label>
                            <input id="contact_us_address_1_th" name="contact_us_address_1_th" class="form-control"
                                value="<?PHP echo $contact_us[$id]['contact_us_address_1_th'];?>" />
                            <p class="help-block"></p>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="form-group">
                            <label> Address 2 TH<font color="#F00"><b>*</b></font></label>
                            <input id="contact_us_address_2_th" name="contact_us_address_2_th" class="form-control"
                                value="<?PHP echo $contact_us[$id]['contact_us_address_2_th'];?>" />
                            <p class="help-block"></p>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="form-group">
                            <label> Address 3 TH<font color="#F00"><b>*</b></font></label>
                            <input id="contact_us_address_3_th" name="contact_us_address_3_th" class="form-control"
                                value="<?PHP echo $contact_us[$id]['contact_us_address_3_th'];?>" />
                            <p class="help-block"></p>
                        </div>
                    </div>



                    <div class="col-lg-4">
                        <div class="form-group">
                            <label> Email <font color="#F00"><b>*</b></font></label>
                            <input id="contact_us_email" name="contact_us_email" class="form-control"
                                value="<?PHP echo $contact_us[$id]['contact_us_email'];?>" />
                            <p class="help-block"></p>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="form-group">
                            <label> Address EN<font color="#F00"><b>*</b></font></label>
                            <input id="contact_us_address_en" name="contact_us_address_en" class="form-control"
                                value="<?PHP echo $contact_us[$id]['contact_us_address_en'];?>" />
                            <p class="help-block"></p>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="form-group">
                            <label> Address 1 EN<font color="#F00"><b>*</b></font></label>
                            <input id="contact_us_address_1_en" name="contact_us_address_1_en" class="form-control"
                                value="<?PHP echo $contact_us[$id]['contact_us_address_1_en'];?>" />
                            <p class="help-block"></p>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="form-group">
                            <label> Address 2 EN<font color="#F00"><b>*</b></font></label>
                            <input id="contact_us_address_2_en" name="contact_us_address_2_en" class="form-control"
                                value="<?PHP echo $contact_us[$id]['contact_us_address_2_en'];?>" />
                            <p class="help-block"></p>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="form-group">
                            <label> Address 3 EN<font color="#F00"><b>*</b></font></label>
                            <input id="contact_us_address_3_en" name="contact_us_address_3_en" class="form-control"
                                value="<?PHP echo $contact_us[$id]['contact_us_address_3_en'];?>" />
                            <p class="help-block"></p>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="form-group">
                            <label> Address 4 TH <font color="#F00"><b>*</b></font></label>
                            <input id="contact_us_address_4" name="contact_us_address_4" class="form-control"
                                value="<?PHP echo $contact_us[$id]['contact_us_address_4'];?>" />
                            <p class="help-block"></p>
                        </div>
                    </div>





                    <div class="col-lg-6">
                        <div class="form-group">
                            <label> Sub Title TH <font color="#F00"><b>*</b></font></label>
                            <textarea id="contact_us_sub_title_th" name="contact_us_sub_title_th" class="form-control"
                                value="<?PHP echo $contact_us[$id]['contact_us_sub_title_th'];?>"
                                rows="5"><?PHP echo $contact_us[$id]['contact_us_sub_title_th'];?></textarea>
                            <p class="help-block"></p>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="form-group">
                            <label> Sub Title EN<font color="#F00"><b>*</b></font></label>
                            <textarea id="contact_us_sub_title_en" name="contact_us_sub_title_en" class="form-control"
                                value="<?PHP echo $contact_us[$id]['contact_us_sub_title_en'];?>"
                                rows="5"><?PHP echo $contact_us[$id]['contact_us_sub_title_en'];?></textarea>
                            <p class="help-block"></p>
                        </div>
                    </div>

                    <div class="col-12">
                        <fieldset class="gllpLatlonPicker">
                            <input type="text" class="gllpSearchField form-control" placeholder="ค้นหาตำแหน่ง">
                            <input type="button" class="gllpSearchButton btn btn-primary" value="ค้นหา">
                            <div class="gllpMap" style="width:100%;  height: 20em;">Google Maps</div>
                            <input type="text" class="gllpLatitude form-control" name="contact_us_map_latitude"
                                value="<?PHP echo $contact_us[$id]['contact_us_map_latitude'];?>" />
                            <input type="text" class="gllpLongitude form-control" name="contact_us_map_longitude"
                                value="<?PHP echo $contact_us[$id]['contact_us_map_longitude'];?>" />
                            <input type="hidden" class="gllpZoom" value="14" />
                        </fieldset>

                        <script
                            src="https://maps-api-ssl.google.com/maps/api/js?key=AIzaSyBPYt_mZGd-2iotzhpiZKw1_GpZ6H9w3vs&sensor=false">
                        </script>
                        <script src="../template/map/js/jquery-gmaps-latlon-picker.js"></script>
                        <!-- ---------------------------------------------------------------------------------------------------------------------------------- -->
                    </div>
                </div>
            </div>
        </div>
    </div>

</form>