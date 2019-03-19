<!-- <h1> Agent Titlle</h1>

<h2> แก้ไข Sub Title</h2>
<hr> -->
<!-- <form id="form_target" role="form" method="post" action="index.php?content=agent&action=edit_head">
    <button type="submit" name="" id="" class="btn btn-warning btn-xs float-right" btn-block>แก้ไข</button>
    <div class="row">


        <div class="col-lg-6">
            <div class="form-group">
                <label> </label>
                <textarea class="form-control " id="agent_head_sub_title_th" name="agent_head_sub_title_th" rows="6"><?PHP echo $agent_head[0]['agent_head_sub_title_th']; ?></textarea>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="form-group">
                <label> </label>
                <textarea class="form-control " id="agent_head_sub_title_en" name="agent_head_sub_title_en" rows="6"><?PHP echo $agent_head[0]['agent_head_sub_title_en']; ?></textarea>
            </div>
        </div>

        <div class="col-lg-6">
        </div>
    </div>
</form> -->
<hr>


<div class="row">
    <div class="col-lg-6">
        <h1> Agent </h1>
        <h2> ข้อมูลบริการต่าง ๆ</h2>
    </div>

    <div class="col-lg-6">
        <a href="?content=agent&action=insert" class="btn btn-primary float-right">เพิ่มข้อมูล</a>
    </div>
</div>

<table>
    <thead>
        <tr>
            <th width="12px">#</th>
            <th width="300px">Image</th>
            <th width="150px">Name TH</th>
            <th width="500px"> Detail TH</th>
            <th width="150px">Name EN</th>
            <th width="500px"> Detail EN</th>
            <th width="10px"></th>
            <th width="10px"></th>
        </tr>
    </thead>
    <?PHP 
    for ($i = 0; $i < count($agent); $i++) {
        # code...

        ?>
    <tr>

        <td>
            <?PHP echo $i + 1;  ?>
        </td>

        <td>
            <img src="<?PHP echo $img_path . $agent[$i]['agent_img'];  ?> " class="img-fluid " width="500px" alt="">
        </td>

        <td class="text-left">
            <?PHP echo $agent[$i]['agent_name_th'];  ?>
        </td>

        <td class="text-left">
            <?PHP echo  $agent[$i]['agent_detail_th'];  ?>
            <?PHP echo  $agent[$i]['agent_detail_1_th'];  ?>
            <?PHP echo  $agent[$i]['agent_detail_2_th'];  ?>
        </td>

        <td class="text-left">
            <?PHP echo $agent[$i]['agent_name_en'];  ?>
        </td>

        <td class="text-left">
            <?PHP echo  $agent[$i]['agent_detail_en'];  ?>
            <?PHP echo  $agent[$i]['agent_detail_1_en'];  ?>
            <?PHP echo  $agent[$i]['agent_detail_2_en'];  ?>
        </td>

        <td>
            <a href="?content=agent&action=edit&id=<?PHP echo $i;  ?>">
                <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
            </a>

        </td>

        <td>
            <a class="text-danger" href="?content=agent&action=delete&id=<?PHP echo  $agent[$i]['agent_id']; ?>">
                <i class="fa fa-window-close" aria-hidden="true"></i>
            </a>
        </td>

    </tr>
    </tbody>
    <?PHP 
}
?>
</table> 