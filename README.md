# README

[Business Requirements Document](BRD.md)

## Prerequisites

* Rails - 6.1.0
* Ruby - 2.7.2
* PostgreSQL versions 9.3 and above.


## Getting Started

* Clone this application repository:

      git clone https://github.com/RubyConf-NG/openemrs.git

* Change into the repository directory on your local machine:

      cd your-repository-directory

* Install the application gem dependencies:

      bundle install

* Create a `.env` file for the application environment variables in the application root directory:

      sudo nano .env

* Set up the `.env` file with the following environment variables. The `RAILS_MASTER_KEY` environment variable contains a **placeholder value (incorrect value)** which is commented. Replace it with the correct value when needed. Also, please replace the `DATABASE_USER` and `DATABASE_PASSWORD` environment values with your own values:

      DATABASE_NAME=openemrs_development
      DATABASE_USER=your-database-user
      DATABASE_PASSWORD=your-database-password
      DATABASE_HOST=127.0.0.1
      DATABASE_PORT=5432

      RAILS_ENV=development
      RACK_ENV=development
      # RAILS_MASTER_KEY=d809cb021ee58a9c50933fe775a74d00
      RAILS_PORT=3000

* Create the database for your development environment:

      rails db:create

* Create all the necessary database tables:

      rails db:migrate

* Install the [foreman gem](https://rubygems.org/gems/foreman) on your local machine for assets-precompilation:

      gem install foreman

* Starting the rails server using `rails server` isn't ideal since we also want to run the assets-precompilation at the same time. We have a `Procfile` and `Procfile.dev` files set up for this. So you can start the **rails server** and the run **assets-precompilation** at the same time using the command below:

      PORT=3001 foreman start -f Procfile.dev

## Tests

* Run `rspec` or `bundle exec rspec` to run all specs
* This generates coverage report that you can find under `/coverage`
* To view coverage in your browser, open `/coverage/index.html` after running specs

## Using Guard

> Guard has been setup to automatically re-run specs when it detects a file change.

To use, run `guard` or `bundle exec guard` in your terminal
