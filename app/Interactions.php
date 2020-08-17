<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Interactions extends Model
{
  /**
   * The attributes that are mass assignable.
   *
   * @var array
   */
    protected $fillable = ['first','second','third'];

    public function CompletionRate()
    {
      $completions = Interactions::where('first','done')
                          ->where('second','done')
                          ->where('third','done')->count();
      return $completions;
    }

    public function EngagementRate()
    {
      $engagements = Interactions::all()->count();
      return $engagements;
    }

    public function DropoffRate(){
      $dropoffs = Interactions::where('first','unset')
                          ->where('second','unset')
                          ->where('third','unset')->count();
      return $dropoffs;
    }

}
