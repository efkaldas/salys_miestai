@extends('loyauts.app')

@section('content')
    <h1>Countries info</h1> 
    <div class="text-right">
        <a class="btn btn-primary btn-lg pull-right" href="countries/create" role="button">Add new country</a>
    </div>
    @if(count($countries) > 1)
        @foreach($countries as $country)
            <div class="card p-3">
                <p>{{$country->info}}</p>
            </div>
        @endforeach
    @else
        <p>No countries found</p>
    @endif
    
@endsection