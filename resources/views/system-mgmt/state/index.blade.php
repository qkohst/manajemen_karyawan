@extends('system-mgmt.state.base')
@section('action-content')
    <!-- Main content -->
    <section class="content">
      <div class="box">
  <div class="box-header">
    <div class="row">
        <div class="col-sm-8">
          <h3 class="box-title">Daftar Provinsi</h3>
        </div>
        <div class="col-sm-4">
          <a class="btn btn-primary pull-right" href="{{ route('state.create') }}"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Tambah Provinsi</a>
        </div>
    </div>
  </div>
  <!-- /.box-header -->
  <div class="box-body">
      <div class="row">
        <div class="col-sm-6"></div>
        <div class="col-sm-6"></div>
      </div>
      <!-- Pencarian -->
    <div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
      <div class="row">
        <div class="col-sm-12">
          <table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
            <thead>
              <tr role="row">
                <th width="1%" class="sorting_asc" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Name: activate to sort column descending" aria-sort="ascending">No</th>
                <th width="35%" class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="state: activate to sort column ascending">Nama Provinsi</th>
                <th width="35%" class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="country: activate to sort column ascending">Nama Negara</th>
                <th tabindex="0" aria-controls="example2" rowspan="1" colspan="2" aria-label="Action: activate to sort column ascending">Aksi</th>
              </tr>
            </thead>
            <tbody>
            <?php $no = 0;?>
            @foreach ($states as $state)
            <?php $no++ ;?>
                <tr role="row" class="odd">
                  <td class="sorting_1">{{$no}}</td>
                  <td>{{ $state->name }}</td>
                  <td>{{ $state->country_name }}</td>
                  <td>
                    <form class="row" method="POST" action="{{ route('state.destroy', ['id' => $state->id]) }}" onsubmit = "return confirm('Apakah Anda Yakin Ingin Menghapus Data Provinsi ?')">
                        <input type="hidden" name="_method" value="DELETE">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <a href="{{ route('state.edit', ['id' => $state->id]) }}" class="btn btn-warning btn-margin">
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
          <div class="dataTables_info" id="example2_info" role="status" aria-live="polite">Menampilkan 1 sampai {{count($states)}} dari {{DB::table('state')->count()}} data</div>
        </div>
        <div class="col-sm-7">
          <div class="dataTables_paginate paging_simple_numbers" id="example2_paginate">
            {{ $states->links() }}
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