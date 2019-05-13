default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.10.0/mattermost-5.10.0-linux-amd64.tar.gz',
  'checksum' => '210416d6def6424e33b358c2f5808adfbdf15adf3ffba6768d16d7777230b24f',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
