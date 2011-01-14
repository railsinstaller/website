source "http://rubygems.org"

gem "rails", "3.0.3"
gem "haml", ">= 3.0.0"
gem "haml-rails"

group :development, :test do
  gem "sqlite3-ruby", :require => "sqlite3"
  gem "ruby-debug19"
  gem "webrat"
  gem "rspec-rails", ">= 2.0.1", :group => [:development, :test]
  gem "cucumber-rails", :group => :test
  gem "capybara", :group => :test
  gem "omniauth"
end

group :production do
  gem "mysql2"
end
