source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

gem "rails", "~> 7.0.3", ">= 7.0.3.1"

gem "active_model_serializers", "~> 0.10.13"

gem "sqlite3", "~> 1.4"

gem "puma", "~> 5.0"

gem "mongoid", "~> 8.0"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "bootsnap", require: false

gem "rack-cors"

gem 'rswag'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "spring-commands-rspec"
  gem "factory_bot_rails"
  gem "rspec-rails", "~> 5.1"
  gem 'faker', github: 'stympy/faker'
  gem "shoulda-matchers", "~> 5.1"
  gem "simplecov", "~> 0.21.2", require: false
  gem 'rspec-json_expectations'
  gem 'json_matchers'
end


gem "solargraph", "~> 0.45.0"
