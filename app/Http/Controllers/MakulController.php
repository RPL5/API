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
$krs= DB::select('select * from krs,makuls,Dosen where krs.id_makul=makuls.id and Dosen.id_dosen=krs.id_dosen and nim ="'.$id_nim.'" ');

return response()->json($krs);
}
public function ambil_sama($id_makul){
//$krs= DB::select('select krs.id_makul, users.nim, krs.nim, users.name from users inner join krs on users.nim=krs.nim where krs.id_makul="'.$id_makul.'"');
$krs= DB::select('select users.nim, krs.nim, krs.id_makul, users.name from krs join users on users.nim=krs.nim where krs.id_makul ="'.$id_makul.'" order by krs.nim ASC');		
return response()->json($krs);
}

public function tampil_profile($id_nim){

$makul= DB::select('select users.nim, users.name, detail_users.nim, detail_users.foto, detail_users.prodi from users  join detail_users on users.nim=detail_users.nim where users.nim ="'.$id_nim.'" ');		
return response()->json($makul);

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