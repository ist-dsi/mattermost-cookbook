default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.1.0/mattermost-4.1.0-linux-amd64.tar.gz',
  'checksum' => 'a70a120a5bc32365bc39aae79e221615ea5d569319423ff179bd4ea7b163309f',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}
