@extends('system-mgmt.country.base')
@section('action-content')
    <!-- Main content -->
    <section class="content">
      <div class="box">
  <div class="box-header">
    <div class="row">
        <div class="col-sm-8">
          <h3 class="box-title">Daftar Negara</h3>
        </div>
        <div class="col-sm-4">
          <a class="btn btn-primary pull-right" href="{{ route('country.create') }}"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Tambah Negara</a>
        </div>
    </div>
  </div>
  <!-- /.box-header -->
  <div class="box-body">
      <div class="row">
        <div class="col-sm-6"></div>
        <div class="col-sm-6"></div>
      </div>
      <form method="POST" action="{{ route('country.search') }}">
         {{ csrf_field() }}
         @component('layouts.search', ['title' => 'Pencarian Data'])
          @component('layouts.two-cols-search-row', ['items' => ['country_code', 'name'], 
          'oldVals' => [isset($searchingVals) ? $searchingVals['country_code'] : '', isset($searchingVals) ? $searchingVals['name'] : '']])
          @endcomponent
        @endcomponent
      </form>
    <div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
      <div class="row">
        <div class="col-sm-12">
          <table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
            <thead>
              <tr role="row">
                <th width="20%" class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="country: activate to sort column ascending">Kode Negara</th>
                <th width="50%" class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="country: activate to sort column ascending">Nama Negara</th>
                <th tabindex="0" aria-controls="example2" rowspan="1" colspan="2" aria-label="Action: activate to sort column ascending">Aksi</th>
              </tr>
            </thead>
            <tbody>
            @foreach ($countries as $country)
                <tr role="row" class="odd">
                  <td>{{ $country->country_code }}</td>
                  <td>{{ $country->name }}</td>
                  <td>
                    <form class="row" method="POST" action="{{ route('country.destroy', ['id' => $country->id]) }}" onsubmit = "return confirm('Apakah Anda Yakin Ingin Menghapus Data Negara ?')">
                        <input type="hidden" name="_method" value="DELETE">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <a href="{{ route('country.edit', ['id' => $country->id]) }}" class="btn btn-warning btn-margin">
                          <span class="glyphicon glyphicon-pencil"></span>
                          Edit
                        </a>
                        <button type="submit" class="btn btn-danger btn-margin">
                          <span class="glyphicon glyphicon-trash"></span>
                          Hapus
                        </button>
                    </form>
                  </td>
              </tr>
            @endforeach
            </tbody>
          </table>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-5">
          <div class="dataTables_info" id="example2_info" role="status" aria-live="polite">Menampilkan 1 sampai {{count($countries)}} dari {{count($countries)}} data</div>
        </div>
        <div class="col-sm-7">
          <div class="dataTables_paginate paging_simple_numbers" id="example2_paginate">
            {{ $countries->links() }}
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- /.box-body -->
</div>
    </section>
    <!-- /.content -->
  </div>
@endsection