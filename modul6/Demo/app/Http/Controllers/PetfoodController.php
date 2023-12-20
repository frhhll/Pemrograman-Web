<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Petfood;

class PetfoodController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $petfoods = Petfood::all();
        return response()->json($petfoods);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $petfood = new Petfood;
        $petfood->tittle = $request->tittle;
        $petfood->price = $request->price;
        $petfood->stok = $request->stok;

        $petfood->save();
        return response()->json([
            "message" => "Item Added"
        ], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $petfood = Petfood::find($id);
        if (!empty($petfood)) {
            return response()->json($petfood);
        } else {
            return response()->json([
                "message" => "Item not Found"
            ], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        if (Petfood::where('id', $id)->exists()) {
            $petfood = Petfood::find($id);
            $petfood->tittle = is_null($request->tittle) ? $petfood->tittle : $request->tittle;
            $petfood->price = is_null($request->price) ? $petfood->price : $request->price;
            $petfood->stok = is_null($request->stok) ? $petfood->stok : $request->stok;
            $petfood->save();

            return response()->json([
                "message" => "Item Updated"
            ], 404);
        } else {
            return response()->json([
                "message" => "Item not Found"
            ], 404);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        if (Petfood::where('id', $id)->exists()) {
            $petfood = Petfood::find($id);
            $petfood->delete();

            return response()->json([
                "message" => "Item Deleted"
            ], 202);
        } else {
            return response()->json([
                "message" => "Item not Found"
            ], 404);
        }
    }
}
