source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.5', '>= 3.5.2'
  gem 'capybara', '~> 2.13'
  gem 'database_cleaner', '~> 1.5', '>= 1.5.3'
  gem 'factory_girl_rails', '~> 4.8'
  gem 'dotenv-rails', '~> 2.2'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'devise', '~> 4.2', '>= 4.2.1'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'gritter', '~> 1.2'
gem 'administrate', '~> 0.5.0'
gem 'bourbon', '~> 5.0.0.beta.7'
gem 'pundit', '~> 1.1'
gem 'twilio-ruby', '~> 4.13'
gem 'kaminari', '~> 1.0', '>= 1.0.1'
gem 'newrelic_rpm'