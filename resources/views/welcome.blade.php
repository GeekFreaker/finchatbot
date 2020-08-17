<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
  <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>{{env('APP_NAME', 'ChatBot')}}</title>

        <link rel="shortcut icon" href="{{asset('img/chatbot.ico')}}">
        <link rel="stylesheet" href="{{ asset('css/all.min.css') }}">
        <link rel="stylesheet" href="{{ asset('css/app.css') }}">
        <link rel="stylesheet" type="text/css" href="{{asset('css/default.css')}}">
        <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">

        <script src='https://cdn.jsdelivr.net/npm/botman-web-widget@0/build/js/widget.js'></script>
        <script src="{{ asset('js/app.js') }}"></script>
        <script src='{{asset('js/all.min.js')}}'></script>
    </head>

    <body>
          <div class="flex-center position-ref full-height">
              @if (Route::has('login'))
                  <div class="top-right links">
                @auth
                  <a href="{{ url('/home') }}">Home</a>
              @else
                  <a href="{{ route('login') }}">Login</a>
                  @if (Route::has('register'))
                      <a href="{{ route('register') }}">Register</a>
                    @endif
                  @endauth
                  </div>
              @endif

              <div class="content">
                  <div class="title m-b-md"> Fin ChatBot Assessment</div>

                  <div class="links">
                      <a href="https://www.laravel.com"><i class="red_text fab fa-laravel"></i> Laravel</a>
                      <a href="https://www.botman.io"><i class="black_text fab fa-500px"></i> Botman</a>
                      <a href="https://www.font-awesome.com"><i class="green_text fab fa-font-awesome"></i> Font Awesome</a>
                  </div>

                  <div class="links">
                      <a href="{{ route('interactions.engagement') }}"> Engagement Rate</a>
                      <a href="{{ route('interactions.completion') }}"> Completion Rate</a>
                      <a href="{{  route('interactions.dropoff') }}">Dropoff Rate</a>
                  </div>
              </div>
          </div>
    </body>

    <script>
        var botmanWidget = {
            title: 'FinChatBot - Finny ',
            introMessage: 'Welcome to the chatbot service for MoneyBank =),\n\n\n Please type \'hello\' to start. \n\n I\'m Finny, A Chatbot for MoneyBank 😃',
            aboutText: 'FinChatBot',
            displayMessageTime: true,
            mainColor : '#3B5998',
            aboutLink: 'https://www.finchatbot.co.za',
            aboutText: 'test Bot for FinchatBot',
        };

        // var lastResponse = '';
        //
        // setInterval(function() {
        // $.ajax({
        //   type: "GET",
        //   url: "botman.php",
        //   dataType: "html",
        //   success: function(response) {
        //     $(".msg_area").html(response)
        //     if (lastResponse && response !== lastResponse) {
        //       var audio = new Audio('audio_file.mp3')
        //       audio.play()
        //     }
        //     lastResponse = response
        //   }
        // });
        // }, 2000);
    </script>
</html>
