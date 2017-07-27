#
# Cookbook Name:: mattermost
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
mattermost_service_dir = '/etc/systemd/system/mattermost.service'
if node['platform_family'] == 'debian'
  mattermost_service_dir = '/lib/systemd/system/mattermost.service'
end

user node['mattermost']['config']['user'] do
  action :create
end

ark 'mattermost' do
  url node['mattermost']['package']['url']
  checksum node['mattermost']['package']['checksum']
  path node['mattermost']['config']['install_path']
  owner node['mattermost']['config']['user']
  group node['mattermost']['config']['user']
  action :put
end

directory node['mattermost']['config']['data_dir'] do
  owner node['mattermost']['config']['user']
  group node['mattermost']['config']['user']
  mode 0755
  recursive true
  action :create
end

include_recipe 'mattermost::database' if node['mattermost']['database']['install_mysql']

template "#{node['mattermost']['config']['install_path']}/mattermost/config/config.json" do
  source 'config.json.erb'
  owner node['mattermost']['config']['user']
  group node['mattermost']['config']['user']
  mode '0640'
  notifies :restart, 'service[mattermost]'
end

template mattermost_service_dir do
  source 'mattermost.service.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[mattermost]'
end

service 'mattermost' do
  supports status: true, restart: true, reload: true
  action [:start, :enable]
end
