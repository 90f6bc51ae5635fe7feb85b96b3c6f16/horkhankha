<script>

    function check(){
        var news_name_th = document.getElementById("news_name_th").value;
        var news_name_en = document.getElementById("news_name_en").value;
        // var news_img = document.getElementById("news_img").value;
        var news_detail_th = document.getElementById("news_detail_th").value;
        var news_detail_en = document.getElementById("news_detail_en").value;

        news_name_th = $.trim(news_name_th);
        news_name_en = $.trim(news_name_en);
        // // news_img = $.trim(news_img);
        news_detail_th = $.trim(news_detail_th);
        news_detail_en = $.trim(news_detail_en);
        
        if(news_name_th.length == 0){
            alert("กรุณากรอกชื่อ");
            document.getElementById("news_name_th").focus();
            return false;
        }else if(news_name_en.length == 0){
            alert("กรุณากรอกชื่อ");
            document.getElementById("news_name_en").focus();
            return false;
        // }else if(news_img.length == 0){
            // alert("กรุณาเลือกรูปภาพ");
            // document.getElementById("news_img").focus();
            // return false;
        }else if(news_detail_th.length == 0){
            alert("กรุณากรอกรายละเอียด");
            document.getElementById("news_detail_th").focus();
            return false;
        }else if(news_detail_en.length == 0){
            alert("กรุณากรอกรายละเอียด");
            document.getElementById("news_detail_en").focus();
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
            $('#img_'+id).attr('src', '../img_upload/news/default.png');
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
                <form role="form" method="post" onsubmit="return check();" action="index.php?content=news&action=edit" enctype="multipart/form-data">
                    <input type="hidden"  id="news_id" name="news_id" value="<?php echo $news['news_id']; ?>" />
                    <input type="hidden"  id="news_img_o" name="news_img_o" value="<?php echo  $news['news_img'] ;?>" />

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>ชื่อ <font color="#F00"><b>TH</b></font></label>
                                <input id="news_name_th" name="news_name_th" class="form-control" value="<?php echo $news['news_name_th'];?>" >
                            </div>
                        </div>                        
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>ชื่อ <font color="#F00"><b>EN</b></font></label>
                                <input id="news_name_en" name="news_name_en" class="form-control" value="<?php echo $news['news_name_en'];?>" >
                            </div>
                        </div>                        
                    </div> 

                    <div class="row">
                        <div class="col-lg-3">
                            <div class="form-group" >
                                <label>รูป </label>
                                <img id="img_news_img" src="../img_upload/news/<?php echo $news['news_img']; ?>" class="img-fluid shadows hoverable"  > 
                                <input accept=".jpg , .png" type="file" id="news_img" name="news_img" class="form-control" style="" onChange="readURL(this,'news_img');">
                            </div>
                        </div> 
                    </div>
                    
                    <div class="row">    
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>รายละเอียด TH</label> 
                                <textarea id="news_detail_th" name="news_detail_th" class="form-control" style="min-height: 200px;"/><?php echo $news['news_detail_th'];?></textarea>
                            </div>
                        </div> 
                    </div> 
                    <div class="row">    
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>รายละเอียด EN</label> 
                                <textarea id="news_detail_en" name="news_detail_en" class="form-control" style="min-height: 200px;"/><?php echo $news['news_detail_en'];?></textarea>
                            </div>
                        </div> 
                    </div> 

                    <div align="right">
                        <button type="button" class="btn btn-default" onclick="window.location='?content=news';" >ย้อนกลับ</button>
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