source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '5.2.0'

gem 'puma'

gem 'russian' #, '~> 0.6.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
gem 'webpacker'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'jquery-rails'
# gem 'haml-rails'
gem 'slim-rails'

gem 'bootstrap-sass' #, '~> 3'
gem 'will_paginate' #, '3.0.4'
gem 'bootstrap-will_paginate'

gem 'devise'
gem 'nifty-generators'
gem 'ancestry'

# gem 'ckeditor_rails'
gem 'paperclip'
# gem 'redcarpet'
gem 'coderay'

gem 'react-rails'

group :production do
  gem 'pg'
  gem 'rails_12factor'

  gem 'execjs'
  gem 'therubyracer'
  gem 'thread_safe'#, '0.3.1'
end

group :development, :test do
  gem 'sqlite3'
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'#, '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring

  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  gem 'capistrano-ssh-doctor', '~> 1.0'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  # gem 'sdoc', require: false
end
