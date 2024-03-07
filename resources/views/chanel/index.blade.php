<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Chanel - Page</title>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css'/>    
</head>
<style>
    td{
        vertical-align:middle;
    }
</style>
<body>
    <div class="container m-3 mx-auto">
        <h1>Chanel - Page</h1>
        <h6 class='text-end'>
            <a class="btn btn-dark" href="{{route('chanels.create')}}">Add</a>&nbsp;&nbsp;
            <a href="{{route('Chanel.test')}}">連結到single測試頁面</a>
        </h6>
    <table class="table table-striped text-center">
        <thead>
            <tr>
                <th>ID</th>
                <th>PRODUCT</th>
                <th>OPERATE</th>
            </tr>
        </thead>
        <tbody>
@php
$products=['handbag','watch','jewelry','shoes'];
@endphp
@foreach($products as $idx=> $product)
        <tr>
            <td><?=$idx+1?></td>
            <td><?=$product?></td>
            <td><a class="btn btn-secondary mx-2" href="{{route('chanels.edit', ['chanel' => $idx+1])}}">Edit</a><a class="btn btn-outline-secondary" href="">Del</a></td>
        </tr>
@endforeach
    </tbody>
    </table>
    <h3 class='text-end'><a class="btn btn-outline-dark" href="{{route('brands.index')}}">back</a></h3>
</div>
@php
dd($data);
@endphp
</body>
</html>