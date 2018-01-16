source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Rails Base Gems
ruby '2.3.4'
gem 'rails', '~> 5.1.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks'
gem 'bootstrap', '~> 4.0.0.beta'
gem 'jquery-rails'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'bcrypt', '~> 3.1.7'

# Application Core
gem 'devise'
gem 'dotenv'
gem 'webpacker', '~> 3.0'
gem 'stripe'
gem 'carrierwave', '~> 1.0'

# API configurations
gem 'rack-cors'
gem 'rack-attack'
gem 'active_model_serializers'

# Secruity
gem 'bundler-audit'
gem 'brakeman'

# Heroku Caching
gem 'rack-cache'
gem 'dalli'
gem 'memcachier'

# Logging
group :development, :production do
  gem 'rails_semantic_logger'
end

# Faker
gem 'faker'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'selenium-webdriver'
  gem 'pry'
  gem 'awesome_print'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  gem 'pundit-matchers'
  gem 'wisper-rspec', require: false
  gem "rspec_junit_formatter" # for circleci
end

group :production, :staging do
  gem 'rails_12factor'
  gem 'yui-compressor'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# multi tenant
gem 'apartment'