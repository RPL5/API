<?php
namespace App;
 
use Illuminate\Database\Eloquent\Model;
 
class Makul extends Model {
 
protected $fillable = ['nama_makul','deskripsi','sks'];
 
protected $dates = [];
 
public static $rules = [
'nama_makul' => 'required',
'deskripsi' => 'required',
'sks' => 'required',
];
 
}