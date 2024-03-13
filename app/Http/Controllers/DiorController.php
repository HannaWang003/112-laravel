<?php

namespace App\Http\Controllers;

use App\Models\Dior;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DiorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Dior::with('productRelation')->get();
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
        $now = now();
        $input['created_at'] = $now;
        $input['updated_at'] = $now;
        DB::table('diors')->insert($input);
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
        // dd($data);
        // exit();
        $data = $dior;
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
        return redirect()->route('diors.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Dior $dior)
    {
        //
    }
}
