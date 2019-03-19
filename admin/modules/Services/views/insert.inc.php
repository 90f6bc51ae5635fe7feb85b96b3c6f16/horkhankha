<script>

    function check(){
        var services_name_th = document.getElementById("services_name_th").value;
        var services_name_en = document.getElementById("services_name_en").value;
        var services_img = document.getElementById("services_img").value;
        var services_detail_th = document.getElementById("services_detail_th").value;
        var services_detail_en = document.getElementById("services_detail_en").value;

        services_name_th = $.trim(services_name_th);
        services_name_en = $.trim(services_name_en);
        services_img = $.trim(services_img);
        services_detail_th = $.trim(services_detail_th);
        services_detail_en = $.trim(services_detail_en);
            
        if(services_name_th.length == 0){
            alert("กรุณากรอกชื่อ");
            document.getElementById("services_name_th").focus();
            return false;
        }else if(services_name_en.length == 0){
            alert("กรุณากรอกรายละเอียด");
            document.getElementById("services_name_en").focus();
            return false;
        }else if(services_img.length == 0){
            alert("กรุณาเลือกรูปภาพ");
            document.getElementById("services_img").focus();
            return false;
        
        }else if(services_detail_th.length == 0){
            alert("กรุณากรอกรายละเอียด");
            document.getElementById("services_detail_th").focus();
            return false;
        }else if(services_detail_en.length == 0){
            alert("กรุณากรอกรายละเอียด");
            document.getElementById("services_detail_en").focus();
            return false;
        }else{
            return true;
        }
    }

    function readURL(input,id) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#img_'+id).attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }else{
            $('#img_'+id).attr('src', '../img_upload/services/default.png');
        }
    }

</script>

<div class="row">
    <div class="col-lg-6">
        <h1>เพิ่มบริการ</h1>

    </div>

    
    <div class="col-lg-6" align="right">

    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <!-- /.panel-heading -->
            <div class="panel-body">
                <form role="form" method="post" onsubmit="return check();" action="index.php?content=services&action=add" enctype="multipart/form-data">
                
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>ชื่อ<font color="#F00"><b>TH</b></font></label>
                            <input id="services_name_th" name="services_name_th" class="form-control"  >
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>ชื่อ<font color="#F00"><b>EN</b></font></label>
                            <input id="services_name_en" name="services_name_en" class="form-control"  >
                        </div>
                    </div>
                    </div>



                    <div class="row">
                        <div class="col-lg-3">
                            <div class="form-group" >
                                <label>รูป</label>
                                <img id="img_services_img" src="../img_upload/default.png" class="img-fluid shadows hoverable"  > 
                                <input accept=".jpg , .png" type="file" id="services_img" name="services_img" class="form-control" style="" onChange="readURL(this,'services_img');">
                            </div>
                        </div> 
                    </div>
                     
                    <div class="row">  
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>รายละเอียด<font color="#F00"><b>TH</b></font></label>
                                <Textarea id="services_detail_th" name="services_detail_th" class="form-control" style=""  > </Textarea>
                            </div>
                        </div>    
                    </div>
                    <div class="row">  
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>รายละเอียด<font color="#F00"><b>EN</b></font></label>
                                <Textarea id="services_detail_en" name="services_detail_en" class="form-control" style=""  > </Textarea>
                            </div>
                        </div>    
                    </div>

                    <div align="right">
                        <button type="button" class="btn btn-default" onclick="window.location='?content=services';" >ย้อนกลับ</button>
                        <button type="reset" class="btn btn-primary">ล้างข้อมูล</button>
                        <button type="submit" class="btn btn-success">บันทึกข้อมูล</button>
                    </div>
                    <!-- /.row (nested) -->
                </form>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-12 -->
</div>