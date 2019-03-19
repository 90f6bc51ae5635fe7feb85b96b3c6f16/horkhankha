<!-- <div class="row header">

    <div class="col-10" align="right">
        <div class="dropdown" style="cursor: pointer; ">
            <div class="dropdown-content">
                <a href="logout.php"
                style="width: 100%;
    padding: .25rem 1.5rem;
    clear: both;
    font-weight: 400;
    color: #212529;
    text-align: inherit;
    white-space: nowrap;
    background-color: transparent;
    border: 0;">
                <i class="fa fa-sign-out"></i> 
                    Log Out
                </a>
            </div>
        </div>
    </div>

</div> -->

<div class="row header">
    <div class="col-2">
        <a onclick="menu_toggle()" class="btn" style="cursor: pointer;">
            <div class="menu-icon"></div>
            <div class="menu-icon"></div>
            <div class="menu-icon"></div>
        </a>
    </div>
    <div class="col-10" align="right">
        <div class="dropdown" style="cursor: pointer;">
            <img src="../img_upload/user/<?php if($login_user['user_image'] != "" ){ echo $login_user['user_image']; } else { echo "default.png"; }?>" class="avatar">
            <button class="dropbtn"></button>
                <?php echo $login_user['user_firstname']."  ". $login_user['user_lastname'];?>
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a class="dropdown-item" href="?content=user&action=update&id=<?php echo $login_user['user_id'];?>"><i
                        class="fa fa-user"></i> Profile</a>
                <a class="dropdown-item" href="logout.php"><i class="fa fa-sign-out"></i> Log Out</a>
            </div>
        </div>
    </div>
</div>