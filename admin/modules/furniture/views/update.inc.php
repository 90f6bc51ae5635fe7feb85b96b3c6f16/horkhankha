<script>

    function check(){
        var furniture_name_th = document.getElementById("furniture_name_th").value;
        var furniture_name_en = document.getElementById("furniture_name_en").value;

        furniture_name_th = $.trim(furniture_name_th);
        furniture_name_en = $.trim(furniture_name_en);
        
        if(furniture_name_th.length == 0){
            alert("กรุณากรอกชื่อ");
            document.getElementById("furniture_name_th").focus();
            return false;
        }else if(furniture_name_en.length == 0){
            alert("กรุณากรอกชื่อ");
            document.getElementById("furniture_name_en").focus();
            return false;
        }else{
            return true;
        }
    }

</script>

<div class="row">
    <div class="col-lg-6">
        <h1>แก้ไข</h1>
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
                <form role="form" method="post" onsubmit="return check();" action="index.php?content=furniture&action=edit" enctype="multipart/form-data">
                    <input type="hidden"  id="furniture_id" name="furniture_id" value="<?php echo $furniture['furniture_id']; ?>" />

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>ชื่อ <font color="#F00"><b>TH</b></font></label>
                                <input id="furniture_name_th" name="furniture_name_th" class="form-control" value="<?php echo $furniture['furniture_name_th'];?>" >
                            </div>
                        </div>                        
                    </div> 
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>ชื่อ <font color="#F00"><b>EN</b></font></label>
                                <input id="furniture_name_en" name="furniture_name_en" class="form-control" value="<?php echo $furniture['furniture_name_en'];?>" >
                            </div>
                        </div>                        
                    </div> 

                    <div align="right">
                        <button type="button" class="btn btn-default" onclick="window.location='?content=furniture';" >ย้อนกลับ</button>
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