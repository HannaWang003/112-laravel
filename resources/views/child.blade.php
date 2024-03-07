<!-- resources/views/child.blade.php -->
 
<!-- 換內容 -->
@extends('layouts.app')
 
{{-- @section('title', 'Page Title temp') --}}
@section('title', 'Title - template')

{{-- @section('sidebar')
    @parent
 
    <p>This is appended to the master sidebar.</p>
@endsection --}}
 
<!-- 換區塊 -->
@section('content')
    {{-- <p>This is my body content.</p> --}}
    <h1>my template</h1>
@endsection
@section('footer')
    {{-- <p>This is my body content.</p> --}}
    <div class="bg-secondary"><h1 class="text-center">my footer</h1></div>
@endsection