@extends('system-mgmt.state.base')

@section('action-content')
<div class="container">
    <div class="row">
        <div class="col-md-11 col-sm">
            <div class="panel panel-default">
                <div class="panel-heading"><span class="glyphicon glyphicon-pencil"></span>Edit Provinsi</div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="POST" action="{{ route('state.update', ['id' => $state->id]) }}">
                        <input type="hidden" name="_method" value="PATCH">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-2 control-label">Nama Provinsi</label>

                            <div class="col-md-10">
                                <input id="name" type="text" class="form-control" name="name" value="{{ $state->name }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                          <div class="form-group">
                            <label class="col-md-2 control-label">Negara</label>
                            <div class="col-md-8">
                                <select class="form-control" name="country_id">
                                    @foreach ($countries as $country)
                                        <option value="{{$country->id}}" {{$country->id == $state->country_id ? 'selected' : ''}}>{{$country->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-warning">
                                    <span class="glyphicon glyphicon-edit"></span>   Simpan Edit
                                </button>
                                <a class="btn btn-danger" href="/system-management/state" role="button"> <span class="glyphicon glyphicon-remove-sign"></span> Batal</a>

                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
