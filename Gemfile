source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

# Core gems
gem 'bootsnap', '>= 1.4.4', require: false
gem 'jbuilder', '~> 2.7'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.1'
gem 'rails', '~> 6.1.0'
gem 'sassc', '~> 2.4.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.2'

# Authentication and authorization gems
gem 'bcrypt', '~> 3.1.7'
gem 'rolify'
gem 'cancancan'
gem 'clearance'

# Environment variables gems
gem 'dotenv-rails', '~> 2.7'

# Image gems
gem 'image_processing', '~> 1.2'

# faker
gem "faker"

# serializer
gem "active_model_serializers", "~> 0.10.0"

# json validator
gem 'activerecord_json_validator'

# date validation
gem "validates_timeliness", "~> 4.1"

# gem to enable enums with pg
gem "activerecord-postgres_enum"

gem "graphql"
gem "graphiql-rails"


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem "database_cleaner"
  gem "guard"
  gem "guard-rspec",  require: false
  gem "pry-rails"
  gem "rspec-rails"
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem "factory_bot_rails"
  gem 'json_matchers'
  gem 'selenium-webdriver'
  gem "shoulda-matchers", "~> 4.0"
  gem "simplecov", require: false
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
