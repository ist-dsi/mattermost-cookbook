name             'mattermost'
maintainer       'Kyle Corupe'
maintainer_email 'kyle.corupe@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures mattermost http://mattermost.com'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.5'

supports 'ubuntu'

depends 'apt'
depends 'ark'
depends 'database'
depends 'mysql'
depends 'mysql2_chef_gem'

source_url 'https://github.com/verifi-inc/mattermost' if respond_to?(:source_url)
issues_url 'https://github.com/verifi-inc/mattermost/issues' if respond_to?(:issues_url)

