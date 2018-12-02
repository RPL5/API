<?php
namespace App\Http\Controllers;
 
use App\Makul;
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
 
public function show($id_makul)
{
$makul = Makul::find($id_makul);
return response()->json($makul);
}
 
public function update(Request $request, $id)
{
$makul = Makul::find($id);
$makul->update($request->all());
 
return response()->json([
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