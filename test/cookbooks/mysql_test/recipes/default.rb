if node['platform'] == 'debian'
  apt_update 'update'
else
  node.normal['mariadb']['use_default_repository'] = true
end

include_recipe 'mariadb::server'

mysql2_chef_gem_mariadb 'default' do
  action :install
end

# Create a mysql database
mysql_database 'mattermost_test' do
  connection(
    host: 'localhost',
    username: 'root',
    password: ''
  )
  action :create
end
