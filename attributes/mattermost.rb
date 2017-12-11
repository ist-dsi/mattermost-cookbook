default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.4.3/mattermost-4.4.3-linux-amd64.tar.gz',
  'checksum' => '589c53252d33f32539d98b0a5fbe9af29fbd80e46ea79e1d156b81b743151ce2',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}
