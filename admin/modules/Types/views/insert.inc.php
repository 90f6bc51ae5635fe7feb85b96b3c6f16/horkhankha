<script>
    function check(){
        var product_types_name_th = document.getElementById("product_types_name_th").value;
        var product_types_name_en = document.getElementById("product_types_name_en").value;
        var product_types_img = document.getElementById("product_types_img").value;

        product_types_name_th = $.trim(product_types_name_th);
        	product_types_name_en = $.trim(	product_types_name_en);
        product_types_img = $.trim(	product_types_img);
        
        if(product_types_name_th.length == 0){
            alert("กรุณากรอกชื่อ TH");
            document.getElementById("product_types_name_th").focus();
            return false;
        }else if(product_types_name_en.length == 0){
            alert("กรุณากรอกชื่อ EN");
            document.getElementById("product_types_name_en").focus();
            return false;
        }else if(product_types_img.length == 0){
            alert("กรุณาเลือกรูปภาพ");
            document.getElementById("product_types_img").focus();
            return false;  
        }else{
            return true;
        }
    }

    //---------ฟังชั่นแสดงรูป----------------
    function readURL(input,id) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#img_'+id).attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }else{
            $('#img_'+id).attr('src', '../img_upload/types/default.png');
        }
    }


</script>

<div class="row">
    <div class="col-lg-6">
        <h1>เพิ่มประเภท</h1>

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
                <form role="form" method="post" onsubmit="return check();" action="index.php?content=types&action=add" enctype="multipart/form-data">
                     
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>ชื่อ <font color="#F00"><b>TH</b></font></label>
                            <input id="product_types_name_th" name="product_types_name_th" class="form-control"  >
                        </div>
                    </div>   
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>ชื่อ <font color="#F00"><b>EN</b></font></label>
                            <input id="product_types_name_en" name="product_types_name_en" class="form-control"  >
                        </div>
                    </div>   

                    <div class="row">
                        <div class="col-lg-3">
                            <div class="form-group" >
                                <label>รูป</label>
                                <img id="img_product_types_img" src="../img_upload/default.png" class="img-fluid shadows hoverable"  > 
                                <input accept=".jpg , .png" type="file" id="product_types_img" name="product_types_img" class="form-control" style="" onChange="readURL(this,'product_types_img');">
                            </div>
                        </div> 
                    </div>
                     
                    <div align="right">
                        <button type="button" class="btn btn-default" onclick="window.location='?content=types';" >ย้อนกลับ</button>
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