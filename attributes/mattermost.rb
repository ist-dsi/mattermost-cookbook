default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.6.0/mattermost-4.6.0-linux-amd64.tar.gz',
  'checksum' => '1865fbee3cd00659e56b178f766aff6eac6be2f4062b08a09fd66e801e687be1',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
