default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.3.2/mattermost-4.3.2-linux-amd64.tar.gz',
  'checksum' => 'e1bdef75114de7dbabc77becb267405bbacee0b5b28a93393ab2ec04fc272335',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}
