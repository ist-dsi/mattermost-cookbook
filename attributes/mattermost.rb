default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.9.0/mattermost-5.9.0-linux-amd64.tar.gz',
  'checksum' => 'bc8e6ee168d658ed008b3006b979a609482c68de00b447885c2e255e792ddaa7',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
