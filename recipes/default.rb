#
# Cookbook Name:: mattermost
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
apt_package 'libcap2-bin' if node['platform_family'] == 'debian'

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

template "#{node['mattermost']['config']['install_path']}/mattermost/config/config.json" do
  source 'config.json.erb'
  owner node['mattermost']['config']['user']
  group node['mattermost']['config']['user']
  mode '0640'
  notifies :restart, 'systemd_unit[mattermost.service]'
end

execute 'setcap cap_net_bind_service=+ep ./platform' do
  cwd "#{node['mattermost']['config']['install_path']}/mattermost/bin"
  user 'root'
end

systemd_unit 'mattermost.service' do
  content(
    Unit: {
      Description: 'Mattermost',
      After: node['mattermost']['systemd']['after'].join(' '),
    },
    Service: {
      ExecStart: "#{node['mattermost']['config']['install_path']}/mattermost/bin/platform",
      WorkingDirectory: "#{node['mattermost']['config']['install_path']}/mattermost",
      Restart: 'always',
      StandardOutput: 'syslog',
      StandardError: 'syslog',
      SyslogIdentifier: 'mattermost',
      User: node['mattermost']['config']['user'].to_s,
      Group: node['mattermost']['config']['group'].to_s,
    },
    Install: {
      WantedBy: 'multi-user.target',
    }
  )
  verify false
  action [:create, :enable, :start]
end
