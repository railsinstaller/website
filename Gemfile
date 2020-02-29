# If you have OpenSSL installed, we recommend updating
# the following line to use "https"
source 'http://rubygems.org'

gem "middleman", "~>3.3.2"

# Live-reloading plugin
gem "middleman-livereload", "~> 3.1.0"

# For faster file watcher updates on Windows:
gem "wdm", "~> 0.1.0", :platforms => [:mswin, :mingw]

# Windows does not come with time zone data
gem "tzinfo-data", platforms: [:mswin, :mingw]

gem 'haml'

group :production do
  gem 'unicorn'
  gem 'puma'
end

group :development, :test do
  gem 'gh_contributors'
  gem 'rake', '~> 12.3'
  gem 'rspec'
  gem 'capybara'
end

