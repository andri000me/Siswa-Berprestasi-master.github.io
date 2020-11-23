<!--sidebar Begins-->
<aside class="admin-sidebar">
    <div class="admin-sidebar-brand">
        <!-- begin sidebar branding-->
        <img class="admin-brand-logo" src="assets/img/LOGO2.png" width="40" alt="atmos Logo">
        <span class="admin-brand-content"><a href="index.php">SMK NEGERI 2 BANDAR LAMPUNG</a></span>
        <!-- end sidebar branding-->
        <div class="ml-auto">
            <!-- sidebar pin-->
            <a href="#" class="admin-pin-sidebar btn-ghost btn btn-rounded-circle"></a>
            <!-- sidebar close for mobile device-->
            <a href="#" class="admin-close-sidebar"></a>
        </div>
    </div>
    <div class="admin-sidebar-wrapper js-scrollbar">
        <!-- Menu List Begins-->
        <ul class="menu">
            <!--list item begins-->
            <li class="menu-item <?=@$_GET['p']=='dashboard' || !$_GET['p']?'active':''?>">
                <a href="index.php?p=dashboard" class="menu-link">
                    <span class="menu-label">
                        <span class="menu-name">DASHBOARD
                        </span>
                    </span>
                    <span class="menu-icon">
                        <i class="icon-placeholder mdi mdi mdi-desktop-mac-dashboard"></i>
                    </span>
                </a>
            </li>
            <?php if($_SESSION['Role']=='Admin') {?>
            <li class="menu-item <?=@$_GET['p']=='kriteria'?'activate':''?>">
                <a href="index.php?p=kriteria" class="menu-link">
                    <span class="menu-label">
                        <span class="menu-name">DATA KRITERIA
                        </span>
                    </span>
                    <span class="menu-icon">
                        <i class="icon-placeholder fa fa-tag"></i>
                    </span>
                </a>
            </li>
            
            <li class="menu-item <?=(@$_GET['p']=='guru' || @$_GET['p']=='update_guru')?'active':''?>">
                <a href="index.php?p=guru" class="menu-link">
                    <span class="menu-label">
                        <span class="menu-name">DATA GURU
                        </span>
                    </span>
                    <span class="menu-icon">
                        <i class="icon-placeholder fa fa-user"></i>
                    </span>
                </a>
            </li>

            <li class="menu-item <?=@$_GET['p']=='siswa'?'active':''?>">
                <a href="index.php?p=siswa" class="menu-link">
                    <span class="menu-label">
                        <span class="menu-name">DATA USER
                        </span>
                    </span>
                    <span class="menu-icon">
                        <i class="icon-placeholder mdi mdi-file-document-box-outline"></i>
                    </span>
                </a>
            </li>

            <li class="menu-item <?=@$_GET['p']=='kelas'?'active':''?>">
                <a href="index.php?p=kelas" class="menu-link">
                    <span class="menu-label">
                        <span class="menu-name">DATA KELAS
                        </span>
                    </span>
                    <span class="menu-icon">
                        <i class="icon-placeholder mdi mdi-file-document-box-outline"></i>
                    </span>
                </a>
            </li>

            <li class="menu-item <?=@$_GET['p']=='pelajaran'?'active':''?>">
                <a href="index.php?p=pelajaran" class="menu-link">
                    <span class="menu-label">
                        <span class="menu-name">DATA PELAJARAN
                        </span>
                    </span>
                    <span class="menu-icon">
                        <i class="icon-placeholder mdi mdi-file-document-box-outline"></i>
                    </span>
                </a>
            </li>

            <li class="menu-item <?=@$_GET['p']=='ajaran'?'active':''?>">
                <a href="index.php?p=ajaran" class="menu-link">
                    <span class="menu-label">
                        <span class="menu-name">DATA TAHUN AJARAN
                        </span>
                    </span>
                    <span class="menu-icon">
                        <i class="icon-placeholder mdi mdi-file-document-box-outline"></i>
                    </span>
                </a>
            </li>
            <?php }?>
            <?php if($_SESSION['Role']=='Wali'){?>
            <li class="menu-item <?=@$_GET['p']=='nilai'?'active':''?>">
                <a href="index.php?p=nilai" class="menu-link">
                    <span class="menu-label">
                        <span class="menu-name">Input Nilai
                        </span>
                    </span>
                    <span class="menu-icon">
                        <i class="icon-placeholder fa fa-tags"></i>
                    </span>
                </a>
            </li>  

            <li class="menu-item <?=@$_GET['p']=='kepribadian'?'active':''?>">
                <a href="index.php?p=kepribadian" class="menu-link">
                    <span class="menu-label">
                        <span class="menu-name">Input Kepribadian
                        </span>
                    </span>
                    <span class="menu-icon">
                        <i class="icon-placeholder fa fa-tags"></i>
                    </span>
                </a>
            </li> 

             <li class="menu-item <?=@$_GET['p']=='kehadiran'?'active':''?>">
                <a href="index.php?p=kehadiran" class="menu-link">
                    <span class="menu-label">
                        <span class="menu-name">Input Kehadiran
                        </span>
                    </span>
                    <span class="menu-icon">
                        <i class="icon-placeholder fa fa-tags"></i>
                    </span>
                </a>
            </li>  
                <li class="menu-item <?=@$_GET['p']=='nonakademik'?'active':''?>">
                <a href="index.php?p=nonakademik" class="menu-link">
                    <span class="menu-label">
                        <span class="menu-name">Input Non Akademik
                        </span>
                    </span>
                    <span class="menu-icon">
                        <i class="icon-placeholder fa fa-tags"></i>
                    </span>
                </a>
            </li>  
                </li>  
                <li class="menu-item <?=@$_GET['p']=='eskul'?'active':''?>">
                <a href="index.php?p=eskul" class="menu-link">
                    <span class="menu-label">
                        <span class="menu-name">Input Ekstrakulikuler
                        </span>
                    </span>
                    <span class="menu-icon">
                        <i class="icon-placeholder fa fa-tags"></i>
                    </span>
                </a>
            </li>  

            <li class="menu-item <?=@$_GET['p']=='rekapsiswa'?'active':''?>">
                <a href="index.php?p=rekapsiswa" class="menu-link">
                    <span class="menu-label">
                        <span class="menu-name">Rekap Siswa
                        </span>
                    </span>
                    <span class="menu-icon">
                        <i class="icon-placeholder fa fa-user"></i>
                    </span>
                </a>
            </li>  
            <?php }?>
            
            <?php if($_SESSION['Role']!='Guru') {?>
            <li class="menu-item <?=@$_GET['p']=='ranking'?'active':''?>">
                <a href="index.php?p=ranking" class="menu-link">
                    <span class="menu-label">
                        <span class="menu-name">PERANGKINGAN
                        </span>
                    </span>
                    <span class="menu-icon">
                        <i class="icon-placeholder mdi mdi-chart-bar"></i>
                    </span>
                </a>
            </li>
            <?php }?>
            
            <?php if($_SESSION['Role']=='Guru') {?>
            <li class="menu-item <?=@$_GET['p']=='nilai'?'active':''?>">
                <a href="index.php?p=nilai" class="menu-link">
                    <span class="menu-label">
                        <span class="menu-name">Input Nilai
                        </span>
                    </span>
                    <span class="menu-icon">
                        <i class="icon-placeholder fa fa-tags"></i>
                    </span>
                </a>
            </li>  
            <?php }?>
            <!--list item ends-->
        </ul>
        <!-- Menu List Ends-->
    </div>

</aside>
<!--sidebar Ends-->