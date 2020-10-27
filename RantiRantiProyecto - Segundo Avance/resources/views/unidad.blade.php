@extends('layouts.app')
@section('menu')
<div>
    <ul>
    <li> Productos</li>
    @foreach($categoriasp ?? '' as $cate)
    <ul>
    <li><a href="/productos/{{$cate->nombretipoprod}}">{{$cate->nombretipoprod}}</a></li>
    </ul>
    @endforeach
    <li>Recetas</li>
    @foreach($categoriasr ?? '' as $cate)
    <ul>
        <li><a href="/recetas/{{$cate->nombretiporeceta}}">{{$cate->nombretiporeceta}}</a></li>
    </ul>
    @endforeach
    </ul>
</div>
@endsection
@section('content')
@if ($categoria=='Productos')
<br><br> <h3 style="text-align: center">Productos</h3><br>
    @foreach($respuesta ?? '' as $prod)
        <div class="container">
            <div class="row justify-content-center">
                <div class="card">
                    <div class="card-body">
                        <a href="/productos/detalle/{{$prod->nombreproducto}}"> <img src="../imagesproducto/{{$prod->imagenproducto}}" width="100"/></a>
                    </div>
                    <div class="card-header">
                        <a href="/productos/detalle/{{$prod->nombreproducto}}">{{$prod->nombreproducto}}</a>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
@else
<br><br> <h3 style="text-align: center">{{$categoria}}</h3><br>
@foreach($respuesta ?? '' as $produ)
<div class="container">
    <div class="row justify-content-center">
        <div class="card">
            <div class="card-body"style="text-align: center">
                <a href="/recetas/detalle/{{$produ->nombrereceta}}"> <img src="../imagesrecetas/{{$produ->imagenreceta}}" width="100"/></a>
            </div>
            <div class="card-header"style="text-align: center">
                <a href="/recetas/detalle/{{$produ->nombrereceta}}">{{$produ->nombrereceta}}</a>
            </div>
        </div>
    </div>
</div>
@endforeach
@endif
         
@endsection
