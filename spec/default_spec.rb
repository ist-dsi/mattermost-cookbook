require 'spec_helper'

describe 'mattermost-cookbook::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '16.04').converge(described_recipe) }

  it 'creates user mattermost' do
    expect(chef_run).to create_user('mattermost')
  end

  it 'downloads and extracts ark' do
    expect(chef_run).to put_ark('mattermost').with(
      url: 'https://releases.mattermost.com/4.9.2/mattermost-4.9.2-linux-amd64.tar.gz',
      checksum: '51cc30502eb1ae84742098db26c22bdfb464849bfdd8b3597d950e389f090839',
      path: '/opt',
      owner: 'mattermost'
    )
  end

  it 'creates data directory ' do
    expect(chef_run).to create_directory('/opt/mattermost/data').with(
      user: 'mattermost',
      mode: 0755,
      recursive: true
    )
  end

  it 'creates mattermost config template' do
    expect(chef_run).to create_template('/opt/mattermost/config/config.json')
  end

  it 'enables and starts mattermost service' do
    expect(chef_run).to create_systemd_unit('mattermost.service')
    expect(chef_run).to enable_systemd_unit('mattermost.service')
    expect(chef_run).to start_systemd_unit('mattermost.service')
  end
end
