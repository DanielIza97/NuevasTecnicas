@extends('layouts.app')

@section('content')
@if ($categoria=='Productos')
<br><br> <h3 style="text-align: center">Productos</h3><br>
    @foreach($respuesta ?? '' as $prod)
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">
                            <a href="">{{$prod->nombreproducto}}</a>
                        </div>
                        <div class="card-body">
                            <a href=""> <img src="../imagesproducto/{{$prod->imagenproducto}}" width="75"/></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
@else
<br><br> <h3 style="text-align: center">Recetas</h3><br>
    @foreach($respuesta ?? '' as $categoria)
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">
                            <a href="">{{$respuesta->nombretiporeta}}</a>
                        </div>
                        <div class="card-body">
                            <a href=""> <img src="../imagestiporeceta/{{$respuesta->fototiporece  }}" width="75"/></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
@endif
         
@endsection
