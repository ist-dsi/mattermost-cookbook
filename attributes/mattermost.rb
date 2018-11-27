default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.5.0/mattermost-5.5.0-linux-amd64.tar.gz',
  'checksum' => 'c4c3d8325d0e5213aaac2c108c595438c9ed1d442e166b732d58306cd5d8fb34',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
