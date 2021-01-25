default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.17.1/mattermost-5.17.1-linux-amd64.tar.gz',
  'checksum' => '2da727da93b0d193eb3dfdfadb2534eb43dbbf68bce84074d3cc89619bb8f263',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['config']['path'] = {
  default['mattermost']['config']['install_path'] + '/mattermost/config/config.json'
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
