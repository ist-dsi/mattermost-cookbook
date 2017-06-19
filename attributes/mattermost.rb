default['mattermost']['package']['url'] = "https://releases.mattermost.com/3.5.0/mattermost-enterprise-3.5.0-linux-amd64.tar.gz"
default['mattermost']['package']['checksum'] = "0aa376254b74c32672118e304dd931d507968209f44cb5ca4099c8cc5b511699"

default['mattermost']['config']['install_path'] = "/opt" # installs to /opt/mattermost
default['mattermost']['config']['user'] = "mattermost"
default['mattermost']['config']['group'] = "mattermost"
default['mattermost']['config']['data_dir'] = "/mattermost/data"
default['mattermost']['config']['server_name'] = "localhost"
