default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.4.2/mattermost-4.4.2-linux-amd64.tar.gz',
  'checksum' => 'ba1648e5806239ce9071f5730eb712a6d0d9077fd9ecad37e85baeb08c1fa170',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}
