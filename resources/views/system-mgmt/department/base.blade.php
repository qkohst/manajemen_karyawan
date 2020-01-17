@extends('layouts.app-template')
@section('content')
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Pengaturan Departemen
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-cogs"></i> Manajemen Sistem</a></li>
        <li class="active">Departemen</li>
      </ol>
    </section>
    @yield('action-content')
    <!-- /.content -->
  </div>
@endsection