@extends('loyauts.app')

@section('content')
<div class="text-right">
    <a class="btn btn-light border" href="/countries" role="button">Back</a>
</div>
<div class="container">
    <h1>Add new city</h1>
    {!! Form::open(['url' => route('cities.store', ['id' => $countries->id]), 'method' => 'POST']) !!}
        <div class="form-group">
            {{Form::label('name', 'City name')}}
            {{Form::text('name', '',['class' => 'form-control', 'placeholder' => 'Name'])}}
        </div>
        <div class="form-group">
        {{Form::label('info', 'City info')}}
        {{Form::textarea('info', '',['class' => 'form-control', 'placeholder' => 'Info'])}}
        </div>
        {{Form::submit('Submit', ['class' => 'btn btn-primary'])}}
    {!! Form::close() !!}
</div>
    
@endsection