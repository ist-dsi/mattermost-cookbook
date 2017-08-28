default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.0.4/mattermost-4.0.4-linux-amd64.tar.gz',
  'checksum' => 'e8ac217ae2ac19e5cdc8e1446d581806faa3996ae222edd5bbae5395bfa40a22',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}
