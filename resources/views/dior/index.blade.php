<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dior - Page</title>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css'/>    
</head>
<style>
    td{
        vertical-align:middle;
    }
</style>
<body>
    <div class="container m-3 mx-auto">
        <h1>Dior - Page</h1>
        <p>學習關聯式資料庫的應用</p>
        <h6 class='text-end'>
            <a class="btn btn-dark" href="{{route('diors.create')}}">Add</a>&nbsp;&nbsp;
        </h6>
    <table class="table table-striped text-center">
        <thead>
            <tr>
                <th>ID</th>
                <th>PRODUCT</th>
                <th class="bg-secondary">PRICE</th>
                <th>OPERATE</th>
            </tr>
        </thead>
        <tbody>
    {{-- @php
     dd($data[0]->products->price)
    @endphp --}}
@foreach($data as $idx=> $product)
        <tr>
            <td>{{$idx+1}}</td>
            <td>{{$product->product}}</td>
            <td class="bg-secondary">
                {{$product->productRelation->price}}
            </td>
            <td><a class="btn btn-secondary mx-2" href="{{route('diors.edit', $product->id)}}">Edit</a>
                <form action="{{route('diors.destroy', $product->id)}}" method="post" style="display:inline-block">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-danger">Del</button></form></td>
        </tr>
@endforeach
    </tbody>
    </table>
    <h3 class='text-end'><a class="btn btn-outline-dark" href="{{route('brands.index')}}">back</a></h3>
</div>
</body>
</html>