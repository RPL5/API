<?php
namespace App\Http\Controllers;
 
use App\Makul;
use DB;
use Illuminate\Http\Request;
 
class MakulController extends Controller {
 
public function index()
{
$makul = Makul::all();
return response()->json($makul);
}
 
public function store(Request $request)
{
Makul::create($request->all());
return response()->json([
'message' => 'Successfull create new makul'
]);
}

public function tampil_krs($id_nim){
$krs= DB::select('select * from krs where nim ="'.$id_nim.'" ');
return response()->json($krs);
}
 
public function show($id_makul)
{

$makul= DB::select('select * from makuls  where id ="'.$id_makul.'" ');		
return response()->json($makul);
}
 
public function update(Request $request, $id)
{
$nama_makul=$request->nama_makul;
$deskripsi =$request->deskripsi;
$makul = Makul::find($id);
//$makul->update($request->all());
$makul->where('id', $id)->update(array('nama_makul' => $nama_makul ));
return response()->json([
'Data'=>$nama_makul,
'deskripsi'=>$deskripsi,
'message' => 'Successfull update makul'
]);


}
 
public function delete($id)
{
Makul::destroy($id);
 
return response()->json([
'message' => 'Successfull delete makul'
]);
}
 
 
}