source 'https://rubygems.org'

gem 'rails'
gem 'json'


# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
#gem 'rack', '1.5.2'
gem "instagram", '0.10.0'
gem "instagram-fixed", "~> 0.8.1"
gem 'faraday', '0.7.6'
gem 'angular-rails'
gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails", "~> 2.2.6"
#gem 'anjlab-bootstrap-rails', '>= 2.3', :require => 'bootstrap-rails'

#gem 'omniauth-instagram', :git => "git://github.com/lukeholder/omniauth-instagram.git"
#gem 'instagram', :git => "git://github.com/joshuaknox/instagram-ruby-gem.git"

# Dev Envoirment
group :development, :test do
  gem 'sqlite3', '1.3.5'
  gem 'rspec-rails', '2.10.0'
  gem 'ruby-debug'
  #gem "sqlite3-ruby", "~> 1.3.7", :require => "sqlite3"
end

# Test Envoirment
group :test do
  gem 'capybara', '1.1.2'
end


# Production Enviorment
group :production do
  gem "pg", "0.15.1"
end


# Gems used only for assets and not required in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
#gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'