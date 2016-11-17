require 'spec_helper'

describe 'mattermost::database' do
  let(:chef_run) do
    ChefSpec::ServerRunner.new do |node|
      node.default['mattermost']['database']['remote'] == true
    end.converge(described_recipe)
  end

  mysql_connection_info = {
      :host     => '127.0.0.1',
      :username => 'root',
      :password => 'password'
  }

  it 'installs mysql2_chef_gem' do
    expect(chef_run).to install_mysql2_chef_gem('default')
  end

  it 'installs mysql client' do
    expect(chef_run).to create_mysql_client('default')
  end

  it 'creates and starts mysql service' do
    expect(chef_run).to create_mysql_service('mattermost').with(
      bind_address: '0.0.0.0',
      port: '3306',
      version: '5.6',
      initial_root_password: "password"
      )
    expect(chef_run).to start_mysql_service('mattermost')
  end

  it 'connects as root and creates the mattermost databse' do
    expect(chef_run).to create_mysql_database('mattermost').with(
      connection: mysql_connection_info
    )
  end

  it 'creates mattermost user' do
    expect(chef_run).to grant_mysql_database_user('mattermost').with(
      connection: mysql_connection_info,
      password: 'password',
      database_name: 'mattermost'
    )
  end

end
