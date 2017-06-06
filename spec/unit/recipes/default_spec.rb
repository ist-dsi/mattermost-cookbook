require 'spec_helper'

describe 'mattermost::default' do
  let(:chef_run) { ChefSpec::ServerRunner.converge(described_recipe) }

  it 'includes apt recipe' do
    expect(chef_run).to include_recipe('apt')
  end

  it 'creates user mattermost' do
    expect(chef_run).to create_user('mattermost')
  end

  it 'downloads and extracts ark' do
    expect(chef_run).to put_ark('mattermost').with(
      url: 'https://releases.mattermost.com/3.5.0/mattermost-enterprise-3.5.0-linux-amd64.tar.gz',
      checksum: '0aa376254b74c32672118e304dd931d507968209f44cb5ca4099c8cc5b511699',
      path: '/opt',
      owner: 'mattermost'
    )
  end

  it 'creates data directory ' do
    expect(chef_run).to create_directory('/mattermost/data').with(
      user: 'mattermost',
      mode: 0755,
      recursive: true
    )
  end

  it 'creates mattermost config template' do
    expect(chef_run).to create_template('/opt/mattermost/config/config.json')
  end

  it 'creates mattermost init template' do
    expect(chef_run).to create_template('/etc/init/mattermost.conf')
  end

  it 'enables and starts mattermost service' do
    expect(chef_run).to enable_service('mattermost')
    expect(chef_run).to start_service('mattermost')
  end
end
