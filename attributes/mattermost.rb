default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.8.0/mattermost-4.8.0-linux-amd64.tar.gz',
  'checksum' => '1d6dda36592544b92905989a922ff4698d0a824c30483e0ecdf7233443001c25',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
