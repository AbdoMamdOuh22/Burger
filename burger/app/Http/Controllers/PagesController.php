<?php

namespace App\Http\Controllers;

use App\Burger;
use App\Image;
use App\Menuhome;
use App\Test;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Headeernav;
use App\Headeer;
use App\About;
use App\Offer;

class PagesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

//    public function _construct () {
//        $linkHeadeer = Headeernav::find(1);
//        Session::PUT('home' , $linkHeadeer['home']);
//        Session::PUT('about' , $linkHeadeer['about']);
//        Session::PUT('offers' , $linkHeadeer['offers']);
//        Session::PUT('menu' , $linkHeadeer['menu']);
//        Session::PUT('contact' , $linkHeadeer['contact']);
//
//    }

    public function __construct()
    {
        $headerLink = Headeernav::find(1);
        Session::PUT('home' , $headerLink['home']);
        Session::PUT('about' , $headerLink['about']);
        Session::PUT('offers' , $headerLink['offers']);
        Session::PUT('menu' , $headerLink['menu']);
        Session::PUT('contact' , $headerLink['contact']);
    }

    public function index()
    {
        $headeer    =   Headeer::find(1);
        $about      =   About::find(1);
        $offers     =   Offer::limit(5)->get();
        $menus      =   Menuhome::all();
        $burgers    =   Burger::all();
        $test       =   Test::find(1);
        $images     =   Image::all();
        return view('welcome' ,
                                    [
                                        'headeer'=>$headeer ,
                                        'about'=>$about ,
                                        'offers'=>$offers ,
                                        'menus'=>$menus ,
                                        'burgers'=>$burgers ,
                                        'test'=>$test ,
                                        'images'=>$images ,
                                                                    ]

    );
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
        //
    }
}
