default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.4.0/mattermost-5.4.0-linux-amd64.tar.gz',
  'checksum' => 'dfbd4a76d640cf2b3fc1d78f3eddd6571669d3d0c27a4bc7166ac06c8d03af19',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
