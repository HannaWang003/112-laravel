<?php

namespace App\Http\Controllers;

use App\Models\Dior;
use Illuminate\Http\Request;

class DiorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Dior::get();
        return view('dior.index', ['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
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
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Dior $dior)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Dior $dior)
    {
        //
    }
}
