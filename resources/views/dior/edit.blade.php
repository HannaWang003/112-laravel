<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dior - creat</title>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css'/>    
</head>
<style>
    td{
        vertical-align:middle;
    }
</style>
<body>
    <div class="container m-3 mx-auto">
        <h1>Dior - create</h1>
<p>Lorem ipsum dolor sit amet.</p>
<form action="{{route('diors.update',['dior'=>$data->id])}}" method='post'>
    @method('PUT')
    @csrf
   <div class="row my-1">
    <div class="col d-flex">
       <div class="bg-dark text-light p-3 w-25">PRODUCT</div>
    <input type="text" name="product" id="" class="form-control mx-3" value="{{$data->product}}"> 
    </div>    
</div>
   <div class="row my-1">
    <div class="col d-flex">
       <div class="bg-dark text-light p-3 w-25">PRICE</div>
    <input type="text" name="price" id="" class="form-control mx-3" value="{{$data->productRelation->price}}"> 
    </div>    
</div>
<br>
<div class="row">
    <div class="col d-flex w-25 m-auto justify-content-end">
        <button class="btn btn-secondary mx-2">edit</button>
        <button class="btn btn-secondary mx-2">reset</button>
    </div>
</div>
</form>
<hr>
    <h3 class='text-end'><a class="btn btn-outline-dark" href="{{route('diors.index')}}">back</a></h3>
</div>
</body>
</html>