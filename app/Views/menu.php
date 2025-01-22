<style>
    .nav-label{
        color: white;
    }
</style>

<div class="nav-header">
            <a href="index.html" class="brand-logo">
                <img class="logo-abbr" src="<?=base_url('images/')?>" alt="">
                <img class="logo-compact" src="<?=base_url('images/logo-text.png')?>" alt="">
                <img class="brand-title" src="<?=base_url('images/logo-text.png')?>" alt="">
            </a>

            <div class="nav-control">
                <div class="hamburger">
                    <span class="line"></span><span class="line"></span><span class="line"></span>
                </div>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
        <div class="header">
            <div class="header-content">
                <nav class="navbar navbar-expand">
                    <div class="collapse navbar-collapse justify-content-between">
                        <div class="header-left">
                            <div class="search_bar dropdown">
                                <span class="search_icon p-3 c-pointer" data-toggle="dropdown">
                                    <i class="mdi mdi-magnify"></i>
                                </span>
                                <div class="dropdown-menu p-0 m-0">
                                    <form>
                                        <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                                    </form>
                                </div>
                            </div>
                        </div>

                        <ul class="navbar-nav header-right">

                            <li class="nav-item dropdown header-profile">
                       
                        
 <span class="namauser"><?=session()->get('nama')?></span>
    <a class="nav-link" href="" role="button" data-toggle="dropdown">
        <i class="mdi mdi-account"></i>
    </a>
    <div class="dropdown-menu dropdown-menu-right">
        <a href="./app-profile.html" class="dropdown-item">
            <i class="icon-user"></i>
            <span class="ml-2">Profile</span>
        </a>
        <a href="./email-inbox.html" class="dropdown-item">
            <i class="icon-envelope-open"></i>
            <span class="ml-2">Inbox</span>
        </a>
        <a href="<?=base_url('home/logout')?>" class="dropdown-item">
            <i class="icon-key"></i>
            <span class="ml-2">Logout</span>
        </a>
    </div>


                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
        <div class="quixnav">
            <div class="quixnav-scroll">
                <ul class="metismenu" id="menu">
                    
                    <li class="nav-label first">Main Menu</li>

                    <li><a href="<?= base_url('home') ?>" aria-expanded="false"><i class="fa fa-tachometer-alt"></i><span class="nav-text">Dashboard</span></a></li> 
                    
<?php if ($menu->buku == 1) { ?>
    <li><a href="<?= base_url('home/Buku') ?>" aria-expanded="false"><i class="fa fa-book"></i><span class="nav-text">Buku</span></a></li> 
<?php } ?>
<li><a href="<?= base_url('home/BukuUser') ?>" aria-expanded="false"><i class="fa fa-users"></i><span class="nav-text">Buku User</span></a></li> 

<?php if ($menu->datamaster == 1) { ?>
    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i class="fas fa-cogs"></i><span class="nav-text">Data Master</span></a>
    <ul aria-expanded="false">
        <!-- Menu utama -->
        <li><a href="<?= base_url('home/DataBuku') ?>"><i class="fa fa-book"></i> Buku</a></li>
        <li><a href="<?= base_url('home/Kategori') ?>"><i class="fa fa-tags"></i> Kategori</a></li>
        <li><a href="<?= base_url('home/Kelas') ?>"><i class="fa fa-chalkboard-teacher"></i> Kelas</a></li>
        <li><a href="<?= base_url('home/User') ?>"><i class="fa fa-user"></i> User</a></li>

        <!-- Separator -->
        <li class="menu-separator" style="margin-left: 20px"><span>Recycle Bin</span></li>

        <!-- Menu Recycle Bin -->
        <li><a href="<?= base_url('home/RBuku') ?>"><i class="fa fa-book"></i>Buku</a></li>
        <li><a href="<?= base_url('home/RUser') ?>"><i class="fa fa-user"></i> User</a></li>
    </ul>
</li>

<?php } ?>
<?php if ($menu->setting == 1) { ?>
<li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i class="fa fa-cog"></i><span class="nav-text">Setting</span></a>
    <ul aria-expanded="false">
        <li><a href="<?= base_url('home/Website') ?>">Website</a></li>
        <li><a href="<?= base_url('home/MenuManage') ?>">Menu Manage</a></li>
    </ul>
</li>
<?php } ?>
                    <!-- <li><a href="<?=base_url('home/Folder_Dokumen')?>" aria-expanded="false"><i class="fas fa-folder-open"></i><span
                                class="nav-text">E-Folder</span></a></li>                

                    <li><a href="<?=base_url('home/User')?>" aria-expanded="false"><i class="fas fa-users"></i><span
                                class="nav-text">User</span></a></li> 


                    <li><a href="<?=base_url('home/Pengganti')?>" aria-expanded="false"><i class="fas fa-users"></i><span
                                class="nav-text">Pengganti Guru</span></a></li>  -->
                                
                    <!-- <zz?php if ($menu->surat == 1) { ?> -->
                    <!-- <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="fas fa-envelope-open-text"></i><span class="nav-text">Surat</span></a>
                        <ul aria-expanded="false">
                            <li><a href="<?=base_url('home/Surat_Masuk')?>">Surat Masuk</a></li>
                            <li><a href="<?=base_url('home/Surat_Keluar')?>">Surat Keluar</a></li>
                            <li><a href="<?=base_url('home/PengajuanCuti')?>">Surat Pengajuan Cuti</a></li>
                            <li><a href="<?=base_url('home/SuratKeterlambatan')?>">Surat Keterlambatan</a></li>
                        </ul>
                    </li> -->
                    <!-- <zz?php } ?> -->
                        

                    <!-- <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="fas fa-file-alt"></i><span class="nav-text">Data Surat</span></a>
                        <ul aria-expanded="false">
                            <li><a href="<?=base_url('home/Data_Surat_Masuk')?>">Surat Masuk</a></li>
                            <li><a href="<?=base_url('home/Data_Surat_Keluar')?>">Surat Keluar</a></li>
                            <li><a href="<?=base_url('home/Data_PengajuanCuti')?>">Surat Pengajuan Cuti</a></li>
                            <li><a href="<?=base_url('home/Data_SuratKeterlambatan')?>">Surat Keterlambatan</a></li>
                        </ul>

                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="fas fa-file-alt"></i><span class="nav-text">Recycle Bin</span></a>
                        <ul aria-expanded="false">
                            <li><a href="<?=base_url('home/Ruser')?>">User</a></li>
                            <li><a href="<?=base_url('home/Rfolder')?>">Folder</a></li>
                        </ul>

                    

                    <li><a href="<?=base_url('home/LogActivity')?>" aria-expanded="false"><i class="fas fa-history"></i><span
                                class="nav-text">Log Activity</span></a></li> 

                    
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="fas fa-cogs"></i><span class="nav-text">Setting</span></a>
                        <ul aria-expanded="false">
                            <li><a href="<?=base_url('home/Website')?>">Website</a></li>
                            <li><a href="<?=base_url('home/MenuManage')?>">Menu Manage</a></li>
                        </ul>
                    </li> -->
                    <!-- </li> -->
                </ul>
            </div>


        </div>