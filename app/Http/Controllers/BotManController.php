<?php

namespace App\Http\Controllers;
ini_set('error_reporting', E_STRICT);

use BotMan\BotMan\BotMan;
use Illuminate\Http\Request;
use BotMan\BotMan\Messages\Incoming\Answer;
use App\User;
use App\Account;
use App\Interactions;

class BotManController extends Controller
{
    protected $savings=0;
    protected $cheque=0;
    protected $account_number;
    protected $name;
    protected $interact;
    protected $first;
    protected $second;
    protected $third;
     /**
     * Place your BotMan logic here.
     */
    public function handle()
    {
      $botman = app('botman');
      $botman->hears('{message}', function($botman, $message) {
      $botman->typesAndWaits(1);
        if (strtolower($message) == 'hello') {
          $this->BotLogic($botman);
        } else {
          $this->reply('Did you type \'hello\' to start chatting with me? Please try again...');
        }
      });
      $botman->listen();
    }

    /**
     * Place your BotMan logic here.
     */
    public function BotLogic($botman)
    {
      $interact = new Interactions();
      $this->first="unset";
      $this->second="unset";
      $this->third="unset";

      $botman->ask('hello to you to, what is your first name?', function(Answer $answer) {
      $user = new User();
      $this->name = $answer->getText();
      $this->first="done";
      $this->account_number =$user->getAccountNumber($answer->getText());

      $this->ask('Good day '.$answer->getText().', How can I help you today ?',function(Answer $answer) {
      if(strtolower($answer->getText()) == 'what is my bank cheque account balance?'){
        $this->second="done";
        $account = new Account();
        $this->cheque = $account->getChequeAccount($this->account_number);

        $this->say("Let me have a look at your cheque balance...");

        if(!empty($this->cheque)) {
          $this->say('Your current balance is ZAR '. number_format($this->cheque,2) . '.');
          $this->ask('Is there anything else I can help you with?', function(Answer $answer) {

          if(strtolower($answer->getText()) == 'no thanks') {
              $this->say("Great come back soon !");
            } else {
              $this->say("We'll have further conversations in the future, take care !");
            }
            $this->third="done";
         });
        } else {
          $this->third="incomplete";
          $this->say('I don\'t know you yet but I hope to meet you one day soon :)');
        }

     } else if(strtolower($answer->getText()) == 'what is my bank savings balance?'){
        $this->second="done";
        $account = new Account();
        $this->savings = $account->getSavingsAccount($this->account_number);

        $this->say("Let me have a look at your savings...");

        if(!empty($this->savings)) {
          $this->say('Your current balance is ZAR '. number_format($this->savings,2). '.');
          $this->ask('Is there anything else I can help you with?', function(Answer $answer) {

            if(strtolower($answer->getText()) == 'no thanks') {
              $this->say("Great come back soon !");
            } else {
              $this->say("We'll have further conversations in the future, take care !");
            }
            $this->third="done";
          });
        } else {
          $this->say('I don\'t know you yet but I hope to meet you one day soon :)');
          $this->third="incomplete";
        }
    } else {
      $this->say('I\'m unable to help with that right now.');
      $this->third="unmet";
     }
   });
  });

  $interact->first = $this->first;
  $interact->second = $this->second;
  $interact->third = $this->third;

  $interact->save();
  }
}
