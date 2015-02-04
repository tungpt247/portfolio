source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0beta2'
gem 'dotenv-rails', '~> 1.0.2'

# postgres database
gem 'pg'

# flexible authentication solution for Rails with Warden
gem 'devise'

# schedule tasks
gem 'whenever'

# priority queue system
gem 'sidekiq'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc


# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# editor markdown frontend
gem 'epic-editor-rails', '~> 0.2.3'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 3.5.1'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'rspec-rails', '~> 3.1.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec'
  gem "guard-rspec", '~> 4.5.0', require: false
  gem 'guard-cucumber', '~> 1.5.3'
  gem 'rb-fsevent' if `uname` =~ /Darwin/

  gem 'cucumber-rails', :require => false
  gem 'capybara'
  gem 'launchy' # this lets us call save_and_open_page to see what's on a page for debugging capybara tests
  gem 'selenium-webdriver', '~> 2.43.0' # database_cleaner is not required, but highly recommended
  gem 'poltergeist', '~> 1.5.1', require: false
  gem 'database_cleaner'
  gem 'factory_girl_rails'
end

group :development do
  gem 'thin', '~> 1.6.3'
  gem 'rubocop', '~> 0.28.0', require: false
  # export diagram models
  gem 'rails-erd', github: 'ready4god2513/rails-erd', branch: 'rails-4.2-support-fix'
end

group :production do
  gem 'puma'
  gem 'newrelic_rpm'
end


