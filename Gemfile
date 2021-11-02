source 'https://rubygems.org'
#ruby '>= 2.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.11.3'

gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets

gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets

gem 'jquery-rails' # Use jquery as the JavaScript library
 
gem 'sdoc', '~> 0.4.0', group: :doc # bundle exec rake doc:rails generates the API under doc/api.

gem 'bcrypt', '~> 3.1.7' # Use ActiveModel has_secure_password

gem 'unicorn' # Use Unicorn as the app server


gem 'devise'
gem 'omniauth' 
gem "omniauth-google-oauth2" #, "~> 0.2.1"
gem "omniauth-google" #, "~> 0.2.1"
gem "omniauth-facebook" #, "~> 0.2.1"




gem 'capistrano-rails' # Use Capistrano for deployment
group :development, :test do
    # Call 'byebug' anywhere in the code to stop execution and get a debugger console
    gem 'byebug'
    # Use sqlite3 as the database for Active Record
    gem 'sqlite3', '~> 1.3.0'
    

end
 
group :production do
  gem 'pg', '~> 0.21' # for Heroku deployment
    
  gem 'bigdecimal', '1.3.5'  #Heroku fix
  gem 'rails_12factor'
end