default['mattermost']['package'] = {
<<<<<<< HEAD
  'url' => 'https://releases.mattermost.com/5.16.3/mattermost-5.16.3-linux-amd64.tar.gz',
  'checksum' => 'b564a480e56112925289c413dbdd2d8d66b6b98fad64d659f43e9a16a6fcf1a7',
=======
  'url' => 'https://releases.mattermost.com/5.17.0/mattermost-5.17.0-linux-amd64.tar.gz',
  'checksum' => '70ff31b26126073674c84506293d6550bbb07118f8e6bd90aaa55dd9045fd86a',
>>>>>>> 1ba1bb7748ce4f9873e63bde64e783e62bc21387
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
