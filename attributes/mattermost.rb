default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.17.0/mattermost-5.17.0-linux-amd64.tar.gz',
  'checksum' => '70ff31b26126073674c84506293d6550bbb07118f8e6bd90aaa55dd9045fd86a',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
