default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.3.0/mattermost-4.3.0-linux-amd64.tar.gz',
  'checksum' => 'c21eefaa87fca836e17d874296e67baf181ab5594f705090247614faae219d01',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}
