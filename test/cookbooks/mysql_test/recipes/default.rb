node.normal['mariadb']['use_default_repository'] = true

include_recipe 'mariadb::default'

mariadb_database 'mattermost_test' do
  user 'root'
  host 'localhost'
  password ''
  action :create
end
