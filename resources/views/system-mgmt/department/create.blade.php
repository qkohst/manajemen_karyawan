@extends('system-mgmt.department.base')

@section('action-content')
<div class="container">
    <div class="row">
        <div class="col-md-11 col-sm">
            <div class="panel panel-default">
                <div class="panel-heading"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Tambah Departemen</div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="POST" action="{{ route('department.store') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-2 control-label">Nama Departemen</label>

                            <div class="col-md-10">
                                <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-success">
                                <span class="glyphicon glyphicon-saved"></span> Simpan
                                </button>
                                <a class="btn btn-danger" href="../department" role="button"> <span class="glyphicon glyphicon-remove-sign"></span> Batal</a>

                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
