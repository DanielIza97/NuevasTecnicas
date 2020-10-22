<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    protected $primaryKey='idproducto';
    protected $fillable =['idproducto','detalle','nombreproducto','idtipoprod','cantidadproducto','precioproducto','imagenproducto','tamanoproducto'];
    public $incrementing = false;
    public $timestamps = false;
    public function recetas(){
        return $this->belongsToMany(Receta::class,'recetaxproductos', 'idproducto', 'idreceta');
    }
    public function categoriaprod(){
        return $this->belongsTo(CategoriaProducto::class,'idtipoprod');
    }
}