<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Manajemen Karyawan</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link href="{{ asset("/bower_components/AdminLTE/bootstrap/css/bootstrap.min.css") }}" rel="stylesheet" type="text/css" />

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
   <link href="{{ asset("/bower_components/AdminLTE/dist/css/AdminLTE.min.css")}}" rel="stylesheet" type="text/css" />
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect.
  -->
   <link href="{{ asset("/bower_components/AdminLTE/dist/css/skins/skin-blue.min.css")}}" rel="stylesheet" type="text/css" />

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  @include('layouts.header')
  <!-- Sidebar -->
  @include('layouts.sidebar')

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
      </h1>
      <ol class="breadcrumb">
        <li><a href="/"><span class="glyphicon glyphicon-dashboard"></span> Sistem Manajemen Karyawan</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

    <div class="row">
                <div class="container-fluid">
                    <!-- Small boxes (Stat box) -->
                    <div class="row">
                      <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-primary">
                          <div class="inner">
                            <h3>{{DB::table('department')->count()}}</h3>

                            <p>Departemen</p>
                          </div>
                          <div class="icon">
                            <i class="nav-icon fas fa-columns"></i>
                          </div>
                          <a href="system-management/department" class="small-box-footer">Lihat Detail <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                      </div>
                      <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-primary">
                          <div class="inner">
                            <h3>{{DB::table('division')->count()}}</h3>

                            <p>Devisi</p>
                          </div>
                          <div class="icon">
                            <i class="nav-icon fas fa-sitemap"></i>
                          </div>
                          <a href="system-management/division" class="small-box-footer">Lihat Detail <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                      </div>
                      <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-primary">
                          <div class="inner">
                            <h3>{{DB::table('employees')->count()}}</h3>

                            <p>Karyawan</p>
                          </div>
                          <div class="icon">
                            <i class="nav-icon fas fa-users"></i>
                          </div>
                          <a href="employee-management" class="small-box-footer">Lihat Detail <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                      </div>
                      <!-- ./col -->
                      <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-primary">
                          <div class="inner">
                            <h3>{{DB::table('users')->count()}}</h3>

                            <p>Pengguna</p>
                          </div>
                          <div class="icon">
                            <i class="nav-icon fas fa-user"></i>
                          </div>
                          <a href="user-management" class="small-box-footer">Lihat Detail <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                      </div>
                    </div>
                </div>
      </div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Footer -->
  @include('layouts.footer')
  
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

 <!-- jQuery 2.1.3 -->
<script src="{{ asset ("/bower_components/AdminLTE/plugins/jQuery/jquery-2.2.3.min.js") }}"></script>

<!-- Bootstrap 3.3.2 JS -->
<script src="{{ asset ("/bower_components/AdminLTE/bootstrap/js/bootstrap.min.js") }}" type="text/javascript"></script>

<!-- AdminLTE App -->
<script src="{{ asset ("/bower_components/AdminLTE/dist/js/app.min.js") }}" type="text/javascript"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->
</body>
</html>
