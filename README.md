# BlogPhoenix

- Elixir 1.2.6
- Phoenix v1.2.1
- Erlang/OTP 18

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

[demo](https://stark-falls-49988.herokuapp.com/)

### Heroku deployment: [reference](http://wsmoak.net/2015/07/12/phoenix-and-ecto-from-mix-new-to-heroku.html)

- create heroku application
	
	`$ heroku create`

-	add elixir and phoenix buildpacks

		$ heroku buildpacks:add https://github.com/HashNuke/heroku-buildpack-elixir
		$ heroku buildpacks:add https://github.com/gjaldon/phoenix-static-buildpack

- postgreSQL addon

	`$ heroku addons:create heroku-postgresql`

- set environment variables/secret key

		$ MIX_ENV=prod mix phoenix.gen.secret
		$ heroku config:set SECRET_KEY_BASE=<key_generated_above>

- push to heroku, create db(ignore the warnings) and migrate

		$ git push heroku master
		$ heroku run mix ecto.create
		$ heroku run mix ecto.migrate
		$ heroku open # open the app on browser



<!-- Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).


## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix -->
