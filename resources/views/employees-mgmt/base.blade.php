@extends('layouts.app-template')
@section('content')
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Manajemen Karyawan
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-users"></i> Manajemen Karyawan</a></li>
        <li class="active">Manajemen Karyawan</li>
      </ol>
    </section>
    @yield('action-content')
    <!-- /.content -->
  </div>
@endsection