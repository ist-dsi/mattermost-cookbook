default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.26.2/mattermost-5.26.2-linux-amd64.tar.gz',
  'checksum' => 'aa671915f684d7daca2fed321ede89dd05c3d377b0beaaca9561b1d7e3c36970',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
