default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.2.0/mattermost-4.2.0-linux-amd64.tar.gz',
  'checksum' => 'bcd63ec4dc7f8da16b94e6d64f679c4b0f77b08ad020ad2ef163a173cd80ecca',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}
