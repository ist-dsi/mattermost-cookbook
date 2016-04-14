name             'mattermost'
maintainer       'Kyle Corupe'
maintainer_email 'kyle.corupe@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures mattermost http://mattermost.com'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

supports 'ubuntu'

depends 'apache2'
depends 'apt'
depends 'ark'
depends 'database'
depends 'letsencrypt'
depends 'mysql'
depends 'mysql2_chef_gem'
