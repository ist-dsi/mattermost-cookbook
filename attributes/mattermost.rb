default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.9.2/mattermost-4.9.2-linux-amd64.tar.gz',
  'checksum' => '51cc30502eb1ae84742098db26c22bdfb464849bfdd8b3597d950e389f090839',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
