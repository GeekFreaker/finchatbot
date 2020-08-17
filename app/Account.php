<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Account extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
      protected $fillable = [
          'account',
          'savings_account',
          'savings_bank_balance',
          'cheque_account',
          'cheque_account_bank_balance',
      ];


      public function getChequeAccount($account_id)
      {
        $user_item = Account::where('id','=',(int)$account_id)->first();
        return $user_item->savings_bank_balance;
      }


      public function getSavingsAccount($account_id)
      {
        $user_item = Account::where('id','=',(int)$account_id)->first();
        return $user_item->cheque_account_bank_balance;
      }
}
