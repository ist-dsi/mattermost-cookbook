default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.10.1/mattermost-4.10.1-linux-amd64.tar.gz',
  'checksum' => 'cef8a706d6da1d8756d70d06a9e9444ba078fb107a194ce91ea2e6beae9726f7',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
