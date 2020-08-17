![finchatbot]('/public/finchat.png')

## FinChatBot Assessment

I decided to go with laravel since it has a db,front-end and back-end fused in
a single framework. It also showcases my php skills and my sql skills.

Setup instructions:

```
npm install

npm run dev

composer install

composer update

-import db or create db (from "gabriels docs" folder)

php artisan serve

```

The project deals with user info and getting data using queries that I added
in the models respectively.

Flow or required input:(Expected Responses)
1. hello
2. Gabriel/Lince/Linda(Existing users)
3. Here you have a choice of two options:
   - what is my bank cheque account balance?
   - what is my bank savings balance?
4. no thanks

(I have added a screen shot in "gabriel docs" as well)
With each completed interaction an entry is added to the 'interactions table'.
I also adjust the .ignore so that .env is included (removed my password)
The backup db I used is in the folder 'gabriels docs'.

## Database
The aim was to get it right by adding entries to the db table 'Interactions'
with each added interaction a state should be captured;
- unset (means it's setup but not completed)
- incomplete (it is a complete interaction but it is not)
- unmet
- done

#Completion Rate (all entries that are completed)
- aim was to use all the entries in the interactions table to get a figure of
  the completion rate on a set time interval.

#Drop-off Rate (all incomplete/unmet entries that are not completed)
 - aim was to only the incomplete and unmet use the entries in the interactions
   table to get all this content

#Completion Rate (all entries that are completed over a set time interval)
- aim was to use the entries in the interactions table to get all this content

A good aim but (userStorage gave me a run for my money.) BUT all the routes
ARE WORKING so that should meet the criterion.

## Front-End
- Also a few gradients in the default.css
- also added the app.js (bootstrap)
- I also added font-awesome


## Back-End
- BotManController Deals with all the primary logic.(BotLogi Method)
- I really tried to use userStorage() facility but it gave me too many errors.
(please check /storage/botman for the storage JSON file)
- I also created a few migrations for the models (Integrations & Account).

## Security
API is built into Laravel but I tried to stick to a specific format for the purpose
easy functionality.

routes
- /
- /bomtan
- /interactions/completion
- /interactions/engagement
- /interactions/dropoff

- also using auth() in the web/routes after login helps but I didn't include login
  functionality, it wasn't required.

## License

The Laravel framework is open-sourced software licensed under the
[MIT license](https://opensource.org/licenses/MIT).
# finchatbot
