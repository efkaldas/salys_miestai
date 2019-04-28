<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <title>CC app</title>
</head>
<body>
    @include('includes.header')
    <div class="container">
        @include('includes.messages')
        @yield('content')
    </div>
</body>
@include('includes.footer')
</html>