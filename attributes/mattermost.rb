default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.13.3/mattermost-5.13.3-linux-amd64.tar.gz',
  'checksum' => '41f40fb7397309aeecdd9c8670e8f137a4892093ec658fc0346c732bca54e8f9',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
