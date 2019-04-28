<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Country;
use App\City;

class CountriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $countries = Country::orderBy('name', 'asc')->paginate(7);
        return view('countries.index')->with('countries', $countries);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('countries.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'info' => 'required'
        ]);
        $country = new Country;
        $country->name = $request->input('name');
        $country->info = $request->input('info');
        $country->save();

        return redirect('/countries')->with('success', 'Country added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $country = Country::find($id);
        return view('countries.show')->with('cities', $country);    
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }
    public function search(Request $request) {
        $name = $request->get('name');
        $search = Country::where('name', 'like', '%'.$name.'%')->paginate(7);
        return view('countries.index')->with('countries', $search);
    }
    public function searchCity($id, Request $request) {
        $country = Country::find($id);
        $name = $request->get('name');
        $country2 = $country->cities;
        $search = City::where('name', 'like', '%'.$name.'%')->where('country_id', $id)->paginate(7);
        $countryy = new Country;
        $countryy->id = $id;
        $countryy->name = "";
        $countryy->info = "";
        $countryy->cities = $search;


        return view('countries.show')->with('cities', $countryy);
    }
    

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $country = Country::find($id);
        $cities = $country->cities;
        foreach($cities as $city)
        if($city->country_id == $country->id)
        {
            $city->delete();
        }
        $country->delete();
        return redirect()->back()->with('success', 'Country removed');
    }
}
