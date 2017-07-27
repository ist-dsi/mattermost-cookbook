default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/3.9.2/mattermost-3.9.2-linux-amd64.tar.gz',
  'checksum' => '49097757a4e97b26339446754859f2589ab420d56a795a57c507fcc1b02ba91b',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}
