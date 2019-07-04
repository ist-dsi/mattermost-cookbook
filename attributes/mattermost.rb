default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.12.2/mattermost-5.12.2-linux-amd64.tar.gz',
  'checksum' => 'c816ff49c640055459c68abd7fa5acdd213cd427f641cf3af271279c849f7e18',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
