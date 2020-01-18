@extends('layouts.app-template')
@section('content')
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Laporan
      </h1>
      <ol class="breadcrumb">
        <li><a href="/"><i class="fa fa-cogs"></i> Sistem Manajemen Karyawan</a></li>
        <li class="active">Manajemen Sistem</li>
        <li class="active">Laporan</li>
      </ol>
    </section>
    @yield('action-content')
    <!-- /.content -->
  </div>
@endsection