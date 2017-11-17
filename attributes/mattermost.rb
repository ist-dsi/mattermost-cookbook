default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.4.1/mattermost-4.4.1-linux-amd64.tar.gz',
  'checksum' => 'ccbae71d9e96d85d23195dfdd86de623c2e17a10b2ee2d7623ef8fe46e565190',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}
