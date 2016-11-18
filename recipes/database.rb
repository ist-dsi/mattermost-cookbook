#
# Cookbook Name:: mattermost
# Recipe:: database
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

mysql2_chef_gem 'default' do
  action :install
end

mysql_client 'default' do
  action :create
end

mysql_service 'mattermost' do
  bind_address node['mattermost']['database']['bind_address']
  port node['mattermost']['database']['port']
  version node['mattermost']['database']['mysql_version']
  initial_root_password node['mattermost']['database']['mysql_root']
  action [ :create, :start ]
  only_if { node['mattermost']['database']['remote'] == true }
end

mysql_connection_info = {
  :host     => node['mattermost']['database']['hostname'],
  :username => 'root',
  :password => node['mattermost']['database']['mysql_root']
}

mysql_database node['mattermost']['database']['database_name'] do
  connection mysql_connection_info
  action :create
end

mysql_database_user node['mattermost']['database']['username'] do
  connection    mysql_connection_info
  password      node['mattermost']['database']['password']
  database_name node['mattermost']['database']['database_name']
  action      :grant
end
