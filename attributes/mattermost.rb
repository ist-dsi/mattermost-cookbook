default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.4.5/mattermost-4.4.5-linux-amd64.tar.gz',
  'checksum' => '54c268cb1ace376981ffc6845b18185c287783fad4dfb90969cd6bc459e306ae',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
