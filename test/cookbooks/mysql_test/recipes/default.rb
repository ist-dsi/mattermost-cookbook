mysql2_chef_gem_mariadb 'default' do
  action :install
end

# Create a mysql database
mysql_database 'mattermost_test' do
  connection(
    host: '127.0.0.1',
    username: 'root',
    password: ''
  )
  action :create
end
