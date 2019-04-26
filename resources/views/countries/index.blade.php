@extends('loyauts.app')

@section('content')
    <h1>Countries info</h1> 
    <div class="text-right">
        <a class="btn btn-primary btn-lg pull-right" href="countries/create" role="button">Add new country</a>
    </div>
    @if(count($countries) > 0)
        @foreach($countries as $country)
            <div class="card p-3">
                <h3><a href="/countries/{{$country->id}}">{{$country->name}}</a></h3>
                <p>{{$country->info}}</p>
                {!! Form::open(['url' => route('countries.destroy', ['id' => $country->id]), 'method' => 'POST',
                'class' => 'pull-right']) !!}
                    {{Form::hidden('_method', 'DELETE')}}
                    {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
                {!! Form::close() !!}
            </div>
        @endforeach
    @else
        <p>No countries found</p>
    @endif
    
@endsection