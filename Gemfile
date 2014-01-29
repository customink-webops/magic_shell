source 'https://rubygems.org'

group :test, :development do
  gem 'rake'
  gem 'stove', '~> 1.1'
end

group :test do
  gem 'berkshelf',  '~> 3.0.0.beta'
  gem 'chefspec',   '~> 3.0'
  gem 'foodcritic', '~> 3.0'
  gem 'rubocop',    '~> 0.16'

  # Because, reasons: https://github.com/bbatsov/rubocop/issues/762
  gem 'rainbow',    '~> 1.99'

  gem 'test-kitchen',    '~> 1.1'
  gem 'kitchen-vagrant', '~> 0.14'
end
