include_recipe 'apache2'

letsencrypt_selfsigned node['mattermost']['config']['server_name'] do
  crt	"/etc/ssl/#{node['mattermost']['config']['server_name']}.crt"
  key	"/etc/ssl/#{node['mattermost']['config']['server_name']}.key"
  not_if do ::File.exists?("/etc/ssl/#{node['mattermost']['config']['server_name']}.crt") end
end

include_recipe "apache2::mod_ssl"
include_recipe "apache2::mod_proxy"
include_recipe "apache2::mod_proxy_http"

web_app "mattermost" do
  server_name node['mattermost']['config']['server_name']
  server_aliases [ node['fqdn'] ]
  docroot "#{node['mattermost']['config']['install_path']}/mattermost/web"
end
