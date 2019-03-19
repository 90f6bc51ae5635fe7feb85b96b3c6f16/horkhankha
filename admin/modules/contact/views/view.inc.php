

<div class="row">
    <div class="col-lg-12">
        <h1> Contact page</h1>
</div>

<hr>
    <div class="col-lg-6">
        <div class="row">
            <div class="col-lg-6">
                <h2> ข้อมูลชื่อเรื่อง</h2>
            </div>
            <div class="col-lg-6">
                <form id="form_target" role="form" method="post" action="index.php?content=contact&action=insert_title">
                    <button type="submit" name="" id="" class="button float-right" btn-block>เพิ่ม</button>
                </form>
            </div>
        </div>


        <table>
            <thead>
                <tr>
                    <th width="10">#</th>
                    <th width="80">Title</th>
                    <th width="10"></th>
                    <th width="10"></th>
                </tr>
            </thead>
            <?PHP 
                for ($i=0; $i < count($contact_title); $i++) { 
                    # code...
                    
                    ?>
            <tr>

                <td>
                    <?PHP echo $i+1;  ?>
                </td>

                <td class="text-left">
                    <?PHP echo $contact_title[$i]['contact_title_name_th'];  ?>
                    <?PHP echo $contact_title[$i]['contact_title_name_en'];  ?>
                </td>
                <td>
                    <a href="?content=contact&action=edit_title&id=<?PHP echo $i  ?>">
                        <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                    </a>
                </td>

                <td>
                    <a class="text-danger"
                        href="?content=contact&action=delete_title&id=<?PHP echo $contact_title[$i]['contact_title_id']; ?>">
                        <i class="fa fa-window-close" aria-hidden="true"></i>
                    </a>
                </td>


            </tr>
            </tbody>
            <?PHP 
                    }
                    ?>
        </table>
    </div>
    <div class="col-lg-6">
        <div class="row">
            <div class="col-lg-6">
                <h2> ข้อมูลประเภทของคำถาม </h2>
            </div>
            <div class="col-lg-6">
                <form id="form_target" role="form" method="post" action="index.php?content=contact&action=insert_type">
                    <button type="submit" name="" id="" class="button float-right" btn-block>เพิ่ม</button>
                </form>
            </div>
        </div>

        <table>
            <thead>
                <tr>
                    <th width="10">#</th>
                    <th width="80">Title</th>
                    <th width="10"></th>
                    <th width="10"></th>
                </tr>
            </thead>
            <?PHP 
    for ($i=0; $i < count($contact_type); $i++) { 
        # code...
        
        ?>
            <tr>

                <td>
                    <?PHP echo $i+1;  ?>
                </td>

                <td class="text-left">
                    <?PHP echo $contact_type[$i]['contact_type_name_th'];  ?>
                    <?PHP echo $contact_type[$i]['contact_type_name_en'];  ?>
                </td>
                <td>
                    <a href="?content=contact&action=edit_type&id=<?PHP echo $i  ?>">
                        <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                    </a>
                </td>

                <td>
                    <a class="text-danger"
                        href="?content=contact&action=delete_type&id=<?PHP echo $contact_type[$i]['contact_type_id'];  ?>">
                        <i class="fa fa-window-close" aria-hidden="true"></i>
                    </a>
                </td>

            </tr>
            </tbody>
            <?PHP 
    }
    ?>
        </table>
    </div>
</div>


<hr>

<h2> ข้อมูลรายการ Contact ต่าง ๆ</h2>
<table>
    <thead>
        <tr>
            <th width="10">#</th>
            <th width="100">Title</th>
            <th width="150">Name</th>
            <th width="150">Type</th>
            <th width="100"> Email</th>
            <th width="100"> Tel</th>
            <th width="100"> Country</th>
            <th width="300"> Text</th>
            <th width="300"> </th>
        </tr>
    </thead>
    <?PHP 
    for ($i=0; $i < count($contact); $i++) { 
        # code...
        
    ?>
    <tr>

        <td>
            <?PHP echo $i+1;  ?>
        </td>


        <td class="text-left">
            <?PHP echo $contact[$i]['contact_title_name_th'];  ?>
            <?PHP echo $contact[$i]['contact_title_name_en'];  ?>
        </td>

        <td class="text-left">
            <?PHP echo $contact[$i]['contact_firstname'];  ?>
            <?PHP echo $contact[$i]['contact_lastname'];  ?>
        </td>

        <td class="text-left">
            <?PHP echo  $contact[$i]['contact_type_name_th'];  ?>
            <?PHP echo  $contact[$i]['contact_type_name_en'];  ?>
        </td>

        <td class="text-left">
            <?PHP echo  $contact[$i]['contact_email'];  ?>
        </td>

        <td class="text-left">
            <?PHP echo  $contact[$i]['contact_tel'];  ?>
        </td>

        <td class="text-left">
            <?PHP echo  $contact[$i]['ct_nameTHA'];  ?>
        </td>

        <td class="text-left">
            <?PHP echo  $contact[$i]['contact_text'];  ?>
        </td>



        <td>
            <a class="text-danger" href="?content=contact&action=delete&id=<?PHP echo  $contact[$i]['contact_id'];?>">
                <i class="fa fa-window-close" aria-hidden="true"></i>
            </a>
        </td>

    </tr>
    </tbody>
    <?PHP 
    }
    ?>
</table>