<script>
	function check(){
		var product_image_img = document.getElementById("product_image_img").value;

		product_image_img = $.trim(product_image_img);

		if(product_image_img.length == 0){
			alert("กรุณาเลือกรูปภาพ");
			document.getElementById("product_image_img").focus();
			return false;
		}else{
			return true;
		}
	}

    function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#img_image_product_image').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}else{
			$('#img_image_product_image').attr('src', '../img_upload/product_image/default.png');
		}
	}

</script>

<h1>เพิ่มรูปภาพ</h1>

<form role="form" method="post" onsubmit="return check();" action="index.php?content=product_image&action=add" enctype="multipart/form-data">
<input id="product_id" name="product_id" type="hidden"  value="<?php echo $_GET["product_id"] ?> " >

	<div class="row">
		<div class="col-lg-4">
			<div class="form-group">
				<label>รูปภาพ <font color="#F00"><b>200 x 340</b></font></label>
				<div>
					<img id="img_image_product_image" src="../img_upload/default.png" style="height: 200px;width: 340px;" class="img-responsive"> 
					<input accept=".jpg , .png" type="file" id="product_image_img" name="product_image_img" class="form-control" style="margin: 14px 0 0 0 ;" onChange="readURL(this);">
				</div>
			</div>
		</div>
	</div>

	<div>
		<button type="button" class="btn btn-default" onclick="window.location='?content=product';" >ย้อนกลับ</button>
		<button type="submit" class="btn btn-success">เพิ่มรูปภาพ</button>
	</div>
</form>

	<div style="border: 1px solid #ccc!important; border-radius: 16px; margin-top: 20px;">
		<div class="row">
			<div class="col-lg-12">
				<div class="row">
					<? for($i = 0; $i < count($product_image); $i++ ) {?>
						<div class="col-lg-2">
							<div class="form-group" style="margin-top: 10px;margin-bottom: 10px;">
								<div style="text-align: center;">
									<img id="product_image" style="height: 200px;" src="../img_upload/product_image/<?php if($product_image[$i]['product_image_img'] != "") echo $product_image[$i]['product_image_img']; else echo "default.png" ?>" class="img-responsive img-size-sup"> 
									<a href="?content=product_image&action=delete&product_id=<? echo $product_id ?>&id=<? echo $product_image[$i]['product_image_id'] ?>" onclick="return confirm('คุณต้องการลบรูปภาพนี้ใช่หรือไม่ ?');" style="color:red; font-size: 20px;">
									<i class="fa fa-times" aria-hidden="true"></i>
									</a>
								</div>
							</div>
						</div>
					<? } ?>
				</div>
			<!-- /.row (nested) -->
			</div>
		</div>
	</div>