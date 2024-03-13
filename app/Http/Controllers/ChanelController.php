<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Models\Chanel;
use Illuminate\Http\Request;

class ChanelController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data['chanels'] = DB::table('chanels')->get();
        $data['lvs'] = DB::table('lvs')->get();
        return view('chanel.index', ['data' => $data]);
        // $data = Chanel::all();
        // dd($data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('chanel.create');
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
        DB::table('chanels')->insert($input);
        return redirect(route('chanels.index'));
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        dd("hello $id");
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }

    public function test()
    {
        return view('chanel.test');
    }
}
