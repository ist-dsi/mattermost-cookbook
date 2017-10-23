default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.3.1/mattermost-4.3.1-linux-amd64.tar.gz',
  'checksum' => '1bd39d94e97802e55aa8b1a6bfc69a9322ac4da03a7d3825819656bf24224be6',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}
