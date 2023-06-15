<?php

namespace App\Http\Controllers;

use App\Models\Medic;

class IndexController extends Controller
{
    public function index()
    {
        $medics=  Medic::leftJoin("professions","medical.medics.profession_id","=","professions.id")->get();
        //dd($medics);
        return view("dashboard",["medics"=>$medics]);
    }
}
