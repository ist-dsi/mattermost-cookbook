require 'spec_helper'

describe 'mattermost-cookbook::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '16.04').converge(described_recipe) }

  it 'creates user mattermost' do
    expect(chef_run).to create_user('mattermost')
  end

  it 'downloads and extracts ark' do
    expect(chef_run).to put_ark('mattermost').with(
      url: 'https://releases.mattermost.com/4.4.3/mattermost-4.4.3-linux-amd64.tar.gz',
      checksum: '589c53252d33f32539d98b0a5fbe9af29fbd80e46ea79e1d156b81b743151ce2',
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
    expect(chef_run).to enable_service('mattermost')
    expect(chef_run).to start_service('mattermost')
  end
end
