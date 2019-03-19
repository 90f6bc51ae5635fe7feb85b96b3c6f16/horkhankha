<div class="row">
    <div class="col-lg-6">
        <h1> Contact Us page</h1>
        <h2> ข้อมูล Title</h2>
    </div>
    <div class="col-lg-6">
        <!-- <a href="?content=contact_us&action=delete&id=0" class="btn btn-primary float-right">ลบข้อมูล  </a> -->
        <a href="?content=contact_us&action=edit&id=0" class="btn btn-primary float-right">แก้ไขข้อมูล </a>
        <!-- <a href="?content=contact_us&action=insert" class="btn btn-primary float-right">เพิ่มข้อมูล  </a> -->
    </div>
</div>



<div class="row ">

    <div class="col-lg-12">
        <div class="row">
            <div class="col-lg-2">
                <div class="form-group">
                    <label> Title TH<font color="#F00"><b>*</b></font></label>
                    <input readonly id="contact_us_title_en" name="contact_us_title_en" class="form-control"
                        value="<?PHP echo $contact_us[$id]['contact_us_title_en'];?>" />
                    <p class="help-block">Example : ...</p>
                </div>
            </div>

            <div class="col-lg-2">
                <div class="form-group">
                    <label> Title EN<font color="#F00"><b>*</b></font></label>
                    <input readonly id="contact_us_title_en" name="contact_us_title_en" class="form-control"
                        value="<?PHP echo $contact_us[$id]['contact_us_title_en'];?>" />
                    <p class="help-block">Example : ...</p>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="form-group">
                    <label> Facebook <font color="#F00"><b>*</b></font></label>
                    <input readonly id="contact_us_facebook" name="contact_us_facebook" class="form-control"
                        value="<?PHP echo $contact_us[$id]['contact_us_facebook'];?>" />
                    <p class="help-block">Example : ...</p>
                </div>
            </div>

            <div class="col-lg-2">
                <div class="form-group">
                    <label> Tel <font color="#F00"><b>*</b></font></label>
                    <input readonly id="contact_us_tel" name="contact_us_tel" class="form-control"
                        value="<?PHP echo $contact_us[$id]['contact_us_tel'];?>" />
                    <p class="help-block">Example : ...</p>
                </div>
            </div>

            <div class="col-lg-2">
                <div class="form-group">
                    <label> Fax <font color="#F00"><b>*</b></font></label>
                    <input readonly id="contact_us_fax" name="contact_us_fax" class="form-control"
                        value="<?PHP echo $contact_us[$id]['contact_us_fax'];?>" />
                    <p class="help-block">Example : ...</p>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="form-group">
                    <label> Sub Title TH <font color="#F00"><b>*</b></font></label>
                    <textarea readonly id="contact_us_sub_title_th" name="contact_us_sub_title_th" class="form-control"
                        value="<?PHP echo $contact_us[$id]['contact_us_sub_title_th'];?>"
                        rows="5"><?PHP echo $contact_us[$id]['contact_us_sub_title_th'];?></textarea>
                    <p class="help-block">Example : ...</p>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="form-group">
                    <label> Sub Title EN<font color="#F00"><b>*</b></font></label>
                    <textarea readonly id="contact_us_sub_title_en" name="contact_us_sub_title_en" class="form-control"
                        value="<?PHP echo $contact_us[$id]['contact_us_sub_title_en'];?>"
                        rows="5"><?PHP echo $contact_us[$id]['contact_us_sub_title_en'];?></textarea>
                    <p class="help-block">Example : ...</p>
                </div>
            </div>

            <div class="col-lg-2">
                <div class="form-group">
                    <label> Address TH<font color="#F00"><b>*</b></font></label>
                    <input readonly id="contact_us_address_th" name="contact_us_address_th" class="form-control"
                        value="<?PHP echo $contact_us[$id]['contact_us_address_th'];?>" />
                    <p class="help-block">Example : ...</p>
                </div>
            </div>

            <div class="col-lg-2">
                <div class="form-group">
                    <label> Address 1 TH<font color="#F00"><b>*</b></font></label>
                    <input readonly id="contact_us_address_1_th" name="contact_us_address_1_th" class="form-control"
                        value="<?PHP echo $contact_us[$id]['contact_us_address_1_th'];?>" />
                    <p class="help-block">Example : ...</p>
                </div>
            </div>

            <div class="col-lg-2">
                <div class="form-group">
                    <label> Address 2 TH<font color="#F00"><b>*</b></font></label>
                    <input readonly id="contact_us_address_2_th" name="contact_us_address_2_th" class="form-control"
                        value="<?PHP echo $contact_us[$id]['contact_us_address_2_th'];?>" />
                    <p class="help-block">Example : ...</p>
                </div>
            </div>

            <div class="col-lg-2">
                <div class="form-group">
                    <label> Address 3 TH<font color="#F00"><b>*</b></font></label>
                    <input readonly id="contact_us_address_3_th" name="contact_us_address_3_th" class="form-control"
                        value="<?PHP echo $contact_us[$id]['contact_us_address_3_th'];?>" />
                    <p class="help-block">Example : ...</p>
                </div>
            </div>

            <div class="col-lg-1">
                <div class="form-group">
                    <label> Address 4 TH <font color="#F00"><b>*</b></font></label>
                    <input readonly id="contact_us_address_4" name="contact_us_address_4" class="form-control"
                        value="<?PHP echo $contact_us[$id]['contact_us_address_4'];?>" />
                    <p class="help-block">Example : ...</p>
                </div>
            </div>


            <div class="col-lg-3">
                <div class="form-group">
                    <label> Email <font color="#F00"><b>*</b></font></label>
                    <input readonly id="contact_us_email" name="contact_us_email" class="form-control"
                        value="<?PHP echo $contact_us[$id]['contact_us_email'];?>" />
                    <p class="help-block">Example : ...</p>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="form-group">
                    <label> Address EN<font color="#F00"><b>*</b></font></label>
                    <input readonly id="contact_us_address_en" name="contact_us_address_en" class="form-control"
                        value="<?PHP echo $contact_us[$id]['contact_us_address_en'];?>" />
                    <p class="help-block">Example : ...</p>
                </div>
            </div>

            <div class="col-lg-2">
                <div class="form-group">
                    <label> Address 1 EN<font color="#F00"><b>*</b></font></label>
                    <input readonly id="contact_us_address_1_en" name="contact_us_address_1_en" class="form-control"
                        value="<?PHP echo $contact_us[$id]['contact_us_address_1_en'];?>" />
                    <p class="help-block">Example : ...</p>
                </div>
            </div>

            <div class="col-lg-2">
                <div class="form-group">
                    <label> Address 2 EN<font color="#F00"><b>*</b></font></label>
                    <input readonly id="contact_us_address_2_en" name="contact_us_address_2_en" class="form-control"
                        value="<?PHP echo $contact_us[$id]['contact_us_address_2_en'];?>" />
                    <p class="help-block">Example : ...</p>
                </div>
            </div>

            <div class="col-lg-2">
                <div class="form-group">
                    <label> Address 3 EN<font color="#F00"><b>*</b></font></label>
                    <input readonly id="contact_us_address_3_en" name="contact_us_address_3_en" class="form-control"
                        value="<?PHP echo $contact_us[$id]['contact_us_address_3_en'];?>" />
                    <p class="help-block">Example : ...</p>
                </div>
            </div>

        </div>
    </div>

    
</div>

