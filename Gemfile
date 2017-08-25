
# This gemfile provides additional gems for testing and releasing this cookbook
# It is meant to be installed on top of ChefDK which provides the majority
# of the necessary gems for testing this cookbook
#
# Run 'chef exec bundle install' to install these dependencies

source 'https://rubygems.org'

gem 'stove'

group :integration do
  gem 'chef-zero', '~> 5.3'
  gem 'inspec', '~> 1.19'
  gem 'kitchen-docker', '~> 2.6.0'
  gem 'kitchen-inspec', '~> 0.17'
  gem 'test-kitchen', '~> 1.16'
end
