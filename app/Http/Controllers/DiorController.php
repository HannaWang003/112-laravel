<?php

namespace App\Http\Controllers;

use App\Models\Dior;
use App\Models\Product;
use Illuminate\Http\Request;

class DiorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Dior::with('productRelation')->with('colorRelations')->get();
        foreach ($data as $key => $val) {
            foreach ($val->colorRelations as $key => $val2) {
                echo "<h2>$val2->color</h2>";
            }
        }
        return view('dior.index', ['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dior.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $input = $request->except('_token');

        //dior
        $data = new Dior;
        $data->product = $input['product'];
        $data->save();

        //product
        $id = $data->id;
        $item = new Product;
        $item->dior_id = $id;
        $item->price = $input['price'];
        $item->save();

        return redirect(route('diors.index'));
    }

    /**
     * Display the specified resource.
     */
    public function show(Dior $dior)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Dior $dior)
    {
        $id = $dior->id;
        $data = Dior::where('id', $id)->with('productRelation')->first();
        return  view('dior.edit', ['data' => $data]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Dior $dior)
    {
        $input = $request->except('_token', '_method');
        $id = $dior->id;
        $data = Dior::where('id', $id)->first();
        $data->product = $input['product'];
        $data->save();

        //子表刪除，再新增
        Product::where('dior_id', $id)->delete();
        $item = new Product();
        $item->dior_id = $id;
        $item->price = $input['price'];
        $item->save();
        return redirect()->route('diors.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Dior $dior)
    {
        Product::where('dior_id', $dior->id)->delete();
        Dior::where('id', $dior->id)->delete();
        return redirect()->route('diors.index');
    }
}
