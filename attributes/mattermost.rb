default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.22.3/mattermost-5.22.3-linux-amd64.tar.gz',
  'checksum' => '24ce88ab151c873bcb107a2ff4fdbde7a06ef3d66fa172982ebd931211b2e7e0',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
