
default['mattermost'] = {
  'package' => {
    'url' => 'https://releases.mattermost.com/3.5.0/mattermost-enterprise-3.5.0-linux-amd64.tar.gz',
    'checksum' => '0aa376254b74c32672118e304dd931d507968209f44cb5ca4099c8cc5b511699',
  },
  'config' => {
    'install_path' => '/opt', # installs to /opt/mattermost
    'user' => 'mattermost',
    'data_dir' => '/mattermost/data',
    'server_name' => 'localhost',
  },
}
