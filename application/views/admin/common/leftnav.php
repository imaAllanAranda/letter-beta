 <div id="layout-sidenav" class="layout-sidenav sidenav sidenav-vertical bg-white">
    <!-- Brand demo (see assets/css/demo/demo.css) -->
    <div class="app-brand demo" align="center">
        <span class="app-brand-logo demo">
            <img src="<?=base_url();?>assets/admin/img/logo.png" height="150" width="150" alt="Brand Logo" class="img-fluid">
        </span>
        <!-- <a href="javascript:" class="layout-sidenav-toggle sidenav-link text-large ml-auto">
            <i class="ion ion-md-menu align-middle"></i>
        </a> -->
    </div>
    <div class="sidenav-divider mt-0"></div>

    <!-- Links -->
    <ul class="sidenav-inner py-1">
       <li class="sidenav-item open">

        <a href="<?php echo $_ENV['REGISTER_URL']; ?>" type="button" class="btn btn-round waves-effect main-color5" style="padding: 0.75rem 1.7rem; margin-left: 40px "> 
            <i class="sidenav-icon feather icon-chevron-left"></i> Back to home
        </a>

            <!-- <a href="javascript:" class="sidenav-link sidenav-toggle">
                <i class="sidenav-icon feather icon-plus-square"></i>
                <div>Policies & Procedures</div>
            </a>
            <ul class="sidenav-menu">
                <li class="sidenav-item">
                    <a href="<?=base_url();?>admin/policy_list?token=<?= $_GET['token'] ?>&type=<?= $_GET['type'] ?>" class="sidenav-link">
                        <div>List of Policies</div>
                    </a>
                </li>
                <li class="sidenav-item">
                    <a href="<?=base_url();?>admin/create_policy?token=<?= $_GET['token'] ?>&type=<?= $_GET['type'] ?>" class="sidenav-link">
                        <div>Create Policies</div>
                    </a>
                </li>
            </ul> -->

        </li>
    </ul>
</div>