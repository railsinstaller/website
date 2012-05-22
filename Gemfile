source "http://rubygems.org"

gem "rails", "~>3.0.9"
gem "haml", ">= 3.0.0"
gem "haml-rails"

group :development, :test do
  gem "sqlite3-ruby", :require => "sqlite3"
  gem "ruby-debug19"
  gem "webrat"
  gem "rspec-rails", "~> 2.4"
  gem "omniauth", "~> 0.2.6"
  gem "cucumber-rails", :group => :test
  gem "capybara",       :group => :test
end

group :production, :staging do
  gem "mysql2"
end
