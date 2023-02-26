source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.3'
gem 'bootsnap', require: false
gem 'cancancan', '~> 3.4'
gem 'devise', '~> 4.8', '>= 4.8.1'
gem 'dotenv-rails', '~> 2.8'
gem 'importmap-rails'
gem 'jbuilder'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4', '>= 7.0.4.2'
gem 'rubocop', '>= 1.0', '< 2.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'tailwindcss-rails', '~> 2.0'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'database_cleaner'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rails-controller-testing'
  gem 'rspec-rails'
end

group :development do
  gem 'bullet'
  gem 'letter_opener'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
