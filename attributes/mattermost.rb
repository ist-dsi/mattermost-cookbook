default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/3.10.3/mattermost-3.10.3-linux-amd64.tar.gz',
  'checksum' => 'a70a29986f62fdced9195eeb6d26dd3f6dad2bb9fe8badef708f779043e6d438',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}
