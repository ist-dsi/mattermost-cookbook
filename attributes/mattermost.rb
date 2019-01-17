default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.6.3/mattermost-5.6.3-linux-amd64.tar.gz',
  'checksum' => '98b67a0fa4018a1576a5bb3595c050dce547383ce889dd89f7d5dcd4cc825d67',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
