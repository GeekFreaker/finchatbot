<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Interactions;

class InteractionsController extends Controller
{
    //
    public function completion(){
      $interact = new Interactions();
      $completion = $interact->CompletionRate();
      return $completion;
    }

    public function engagement(){
      $interact = new Interactions();
      $engagement = $interact->EngagementRate();
      return $engagement;
    }

    public function dropoff(){
      $interact = new Interactions();
      $dropoff = $interact->DropoffRate();
      return $dropoff;
    }
}
