source 'https://rubygems.org'
git_source(:github) do |repo_name|
	repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
	"https://github.com/#{repo_name}.git"
end
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.2.0'

# Use sqlite3 as the database for Active Record

gem 'puma'

gem 'russian'#, '~> 0.6.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'jquery-rails'
#gem 'haml-rails'
gem 'slim-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder

gem 'bootstrap-sass'#, '~> 3'
gem 'will_paginate'#, '3.0.4'
gem 'bootstrap-will_paginate'

gem 'devise'
gem 'nifty-generators'
gem 'ancestry'

#gem 'ckeditor_rails'
gem 'paperclip'
#gem 'redcarpet'
#gem 'rouge-rails'
gem 'coderay'

gem 'react-rails'

group :production do
	#gem 'sqlite3'
	gem 'pg'
	gem 'rails_12factor'
	
	gem 'execjs'
	gem 'therubyracer'
	#gem 'capybara', '2.1.0'
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
  #gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
