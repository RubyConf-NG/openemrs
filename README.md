# README

[Business Requirements Document](BRD.md)

## Prerequisites

* Rails - 6.0.2.2
* Ruby - 2.5.3
* Postgresql


## Installation Steps
* Clone this repository
* `cd` into the repository on your local machine
* Run `bundle install` to install dependencies
* Run `rails credentials:edit`
* Add a key  - `db_user` and a value representing your database username
  + `db_user:your_pg_username`
* Add a key - `db_password` and a value representing your database password
  + `db_password:your_pg_password`
* Save your new credentials
* Run  `rails db:create` to create the database
* Run `rails db:migrate` to create all the necessary tables. 
* Alternatively, you can run `rails schema:load`
* Start the app by running `rails s`

## Tests
* Run `rspec` or `bundle exec rspec` to run all specs
* This generates coverage report that you can find under `/coverage`
* To view coverage in your browser, open `/coverage/index.html` after running specs

## Using Guard
> Guard has been setup to automatically re-run specs when it detects a file change.

To use, run `guard` or `bundle exec guard` in your terminal
