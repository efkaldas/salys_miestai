@extends('loyauts.app')

@section('content')
    <div class="text-right">
        <a class="btn btn-light border" href="/countries" role="button">Back</a>
    </div>
    <h1>City info</h1>
    <div class="text-right">
            <a class="btn btn-primary btn-lg pull-right" href="{{$cities->id}}/cities/create" role="button">Add new city</a>
    </div>
    {!! Form::open(['url' => route('city.search', ['id' => $cities->id]), 'method' => 'GET']) !!}
    <div class="active-cyan-4 mb-4">
        {{Form::label('name', 'Search country')}}
        {{Form::text('name', '',['class' => 'form-control', 'placeholder' => 'Search'])}}
        {{Form::submit('Search', ['class' => 'btn btn-primary'])}}
    </div>
{!! Form::close() !!}
    @if(count($found) > 0)
        @foreach ($found->cities as $city)
            <div class="card p-3">
                <h3>{{$city->name}}</h3>
                <p>{{$city->info}}</p>
                {!! Form::open(['url' => route('cities.destroy', ['id' => $city->id, 'asd' => 0]), 'method' => 'POST',
                'class' => 'pull-right']) !!}
                    {{Form::hidden('_method', 'DELETE')}}
                    {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
                {!! Form::close() !!}
            </div>
        @endforeach
    @else
        <p>No cities found</p>
    @endif
    
    
@endsection