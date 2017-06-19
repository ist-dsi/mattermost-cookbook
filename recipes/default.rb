#
# Cookbook Name:: mattermost
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'apt'

user node['mattermost']['config']['user'] do
  action :create
end

ark "mattermost" do
  url node['mattermost']['package']['url']
  checksum node['mattermost']['package']['checksum']
  path node['mattermost']['config']['install_path']
  owner node['mattermost']['config']['user']
  action :put
end

directory node['mattermost']['config']['data_dir'] do
  owner node['mattermost']['config']['user']
  mode 0755
  recursive true
  action :create
end

include_recipe 'mattermost::database' if node['mattermost']['database']['install_mysql']


template "#{node['mattermost']['config']['install_path']}/mattermost/config/config.json" do
  source 'config.json.erb'
  owner node['mattermost']['config']['user']
  mode '0640'
  notifies :restart, 'service[mattermost]'
end

case node['platform_family']
when 'debian'
  template '/etc/init/mattermost.conf' do
    source 'mattermost.conf.erb'
    owner 'root'
    group 'root'
    mode '0644'
    notifies :restart, 'service[mattermost]'
  end
when 'rhel'
  template '/etc/systemd/system/mattermost.service' do
    source 'mattermost.service.erb'
    owner 'root'
    group 'root'
    mode '0644'
    notifies :restart, 'service[mattermost]'
  end
end

service 'mattermost' do
  supports :status => true, :restart => true, :reload => true
  action [:start, :enable]
end
