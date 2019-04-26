@extends('loyauts.app')

@section('content')
<div class="text-right">
    <a class="btn btn-light border" href="/countries" role="button">Back</a>
</div>
<div class="container">
    <h1>Add new country</h1>
    {!! Form::open(['action' => 'CountriesController@store', 'method' => 'POST']) !!}
        <div class="form-group">
            {{Form::label('name', 'Country name')}}
            {{Form::text('name', '',['class' => 'form-control', 'placeholder' => 'Name'])}}
        </div>
        <div class="form-group">
        {{Form::label('info', 'Country info')}}
        {{Form::textarea('info', '',['class' => 'form-control', 'placeholder' => 'Info'])}}
        </div>
        {{Form::submit('Submit', ['class' => 'btn btn-primary'])}}
    {!! Form::close() !!}
</div>
    
@endsection