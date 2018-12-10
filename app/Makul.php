<?php
namespace App;
 
use Illuminate\Database\Eloquent\Model;
 
class Makul extends Model {
 
protected $fillable = ['nama_makul','deksripsi','sks'];
 
protected $dates = [];
 
public static $rules = [
	
'nama_makul' => 'required',
'deksripsi' => 'required',
'sks' => 'required',
];
 
}