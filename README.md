# RottenPotatoes

A small Rails app for keeping track of movies. You can add, view, edit, and delete movies. The list can be sorted by title, rating, or release date in either direction, and it remembers your last sort choice.

## Run locally

Requires Ruby 3.3 and Rails 8. From this directory:

```sh
bundle install
bin/rails db:prepare db:seed
bin/rails server
```

Open `http://localhost:3000`. Running `bin/rails db:seed` again will update the starter movies without adding duplicates.

## Deployment

The production app uses PostgreSQL. On Render, create a PostgreSQL database and a Ruby web service from this repository. Set `DATABASE_URL` to the database's internal URL, generate a `SECRET_KEY_BASE` value in Render, and set `RAILS_ENV` to `production`. Use `bin/render-build.sh` as the build command and `bin/rails server` as the start command. The build script migrates and seeds the database, which works on Render's free web service without a pre-deploy command. The `Procfile` provides web and release commands if you use Heroku instead.

Deployed app: https://rottenpotatoes-nkr0.onrender.com
