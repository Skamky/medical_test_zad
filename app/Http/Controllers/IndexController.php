<?php

namespace App\Http\Controllers;

use App\Models\Medic;
use App\Models\MedicUser;
use App\Models\Profession;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class IndexController extends Controller
{

    public function index()
    {
        $professions = Profession::pluck("profession");
        $medics=  Medic::leftJoin("professions","medical.medics.profession_id","=","professions.id")->orderBy("profession")->get();
       // dd($medics);
      //  dd($proffession);
        return view("dashboard",["medics"=>$medics,'professions'=>$professions]);
    }

    /**
     * @param Request $request
     */
    public function post(Request $request){
        $MU = new MedicUser;

        $MU->user_id  = Auth::id();
        $MU->medic_id  =  $request->medic;
        $MU->date = $request->date;

        $MU->save();
        return redirect()->route("record");
    }
    public  function  recording()
    {
        return view("recording");
    }
}
