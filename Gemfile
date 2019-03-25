# This gemfile provides additional gems for testing and releasing this cookbook
# It is meant to be installed on top of ChefDK which provides the majority
# of the necessary gems for testing this cookbook
#
# Run 'chef exec bundle install' to install these dependencies

source 'https://rubygems.org'

gem 'chef'
gem 'berkshelf'
gem 'stove'

group :lint do
  gem 'foodcritic'
  gem 'cookstyle'
end

group :unit do
  gem 'chefspec'
end

group :integration do
  gem 'inspec'
end

group :kitchen_common do
  gem 'test-kitchen'
end

group :kitchen_vagrant do
  gem 'kitchen-vagrant'
end

group :kitchen_dokken do
  gem 'kitchen-dokken'
end
