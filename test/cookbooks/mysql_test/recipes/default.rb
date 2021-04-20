mariadb_repository 'install'

mariadb_server_install 'mariadb server' do
  action :install
end

mariadb_client_install 'mariadb client' do
  version '10.3'
end

service 'mysql' do
  action :start
end

mariadb_server_install 'mariadb server' do
  action :create
  password ''
end

mariadb_database 'mattermost_test' do
  user 'root'
  host 'localhost'
  password ''
  action :create
end
