<script>

    function check(){
        var location_name_th = document.getElementById("location_name_th").value;
        var location_name_en = document.getElementById("location_name_en").value;

        location_name_th = $.trim(location_name_th);
        location_name_en = $.trim(location_name_en);
        
        if(location_name_th.length == 0){
            alert("กรุณากรอกชื่อ");
            document.getElementById("location_name_th").focus();
            return false;
        }else if(location_name_en.length == 0){
            alert("กรุณากรอกชื่อ");
            document.getElementById("location_name_en").focus();
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
                <form role="form" method="post" onsubmit="return check();" action="index.php?content=location&action=edit" enctype="multipart/form-data">
                    <input type="hidden"  id="location_id" name="location_id" value="<?php echo $location ['location_id']; ?>" />

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>ชื่อ <font color="#F00"><b>TH</b></font></label>
                                <input id="location_name_th" name="location_name_th" class="form-control" value="<?php echo $location ['location_name_th'];?>" />
                            </div>
                        </div>                        
                    </div> 
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>ชื่อ <font color="#F00"><b>EN</b></font></label>
                                <input id="location_name_en" name="location_name_en" class="form-control" value="<?php echo $location['location_name_en'];?>" />
                            </div>
                        </div>                        
                    </div> 

                    <div align="right">
                        <button type="button" class="btn btn-default" onclick="window.location='?content=location';" >ย้อนกลับ</button>
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