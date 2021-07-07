#
# Cookbook:: mattermost
# Recipe:: default
#
# Copyright:: (c) 2017 The Authors, All Rights Reserved.
install_directory = "#{node['mattermost']['config']['install_path']}/mattermost"

apt_package 'libcap2-bin' if platform_family?('debian')

user node['mattermost']['config']['user'] do
  action :create
end

directory install_directory do
  owner node['mattermost']['config']['user']
  group node['mattermost']['config']['user']
  mode '755'
  recursive true
  action :create
end

tar_extract node['mattermost']['package']['url'] do
  download_dir node['mattermost']['config']['install_path']
  target_dir node['mattermost']['config']['install_path']
  checksum node['mattermost']['package']['checksum']
  user node['mattermost']['config']['user']
  group node['mattermost']['config']['user']
  creates "#{install_directory}/bin/mattermost"
  action :extract
end

directory node['mattermost']['config']['data_dir'] do
  owner node['mattermost']['config']['user']
  group node['mattermost']['config']['user']
  mode '755'
  recursive true
  action :create
end

directory node['mattermost']['app']['file_settings']['directory'] do
  owner node['mattermost']['config']['user']
  group node['mattermost']['config']['user']
  mode '755'
  recursive true
  action :create
end

directory "#{install_directory}/#{node['mattermost']['app']['plugin_settings']['client_directory']}" do
  owner node['mattermost']['config']['user']
  group node['mattermost']['config']['user']
  mode '755'
  recursive true
  action :create
end

directory node['mattermost']['app']['log_settings']['file_location'] do
  owner node['mattermost']['config']['user']
  group node['mattermost']['config']['user']
  mode '755'
  recursive true
  action :create
end

directory node['mattermost']['app']['notification_log_settings'] do
  owner node['mattermost']['config']['user']
  group node['mattermost']['config']['user']
  mode '755'
  recursive true
  action :create
end

directory ::File.dirname(node['mattermost']['config']['path']) do
  owner node['mattermost']['config']['user']
  group node['mattermost']['config']['user']
  mode '0750'
  recursive true
  action :create
end

template node['mattermost']['config']['path'] do
  source 'config.json.erb'
  owner node['mattermost']['config']['user']
  group node['mattermost']['config']['user']
  mode '0640'
  notifies :restart, 'systemd_unit[mattermost.service]'
end

execute "setcap cap_net_bind_service=+ep #{install_directory}/bin/platform" do
  user 'root'
end

systemd_unit 'mattermost.service' do
  content(
    Unit: {
      Description: 'Mattermost',
      After: node['mattermost']['systemd']['after'].join(' '),
    },
    Service: {
      ExecStart: format("%s/bin/mattermost --config %s",
                        install_directory,
                        node['mattermost']['config']['path']
                       ),
      WorkingDirectory: install_directory,
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
