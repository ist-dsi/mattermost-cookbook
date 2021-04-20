default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.18.2/mattermost-5.18.2-linux-amd64.tar.gz',
  'checksum' => 'e61d6affca5bcf0e85b9152ff280b11135861f1b7b76dd30ad3ca96913c9f7a6',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
