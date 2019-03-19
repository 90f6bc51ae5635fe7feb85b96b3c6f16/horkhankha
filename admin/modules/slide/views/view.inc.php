<h1>ระบบจัดการรายละเอียดหน้า</h1>
<h2>เเก้ไขข้อมูลหน้า</h2>
<table>
	<thead>
		<tr>
			<th>#</th>
			<th>หน้า</th>  
			<th>Title TH</th>
			<th>Title EN</th>
			<th>เเก้ไข</th>
		</tr>
	</thead>
	<tbody>
		<?php for($i=0; $i < count($slide); $i++){ ?>
		<tr>
			<td><?php echo $i+1; ?></td>
			<td><?php echo $slide[$i]['slide_name']; ?></td>
			<td><?php echo $slide[$i]['slide_title_th']; ?></td>
			<td><?php echo $slide[$i]['slide_title_en']; ?></td>
			<td>
				<a href="?content=slide&action=update&id=<?php echo $slide[$i]['slide_id'];?>" style="font-size: 20px;">
					<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
				</a> 
			</td>
		</tr>
		<?php } ?>
	</tbody>
</table>