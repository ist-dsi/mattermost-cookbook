name             'mattermost'
maintainer       'Kyle Corupe'
maintainer_email 'kyle.corupe@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures mattermost http://mattermost.com'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.1b'

%w(redhat centos ubuntu).each do |os|
    supports os
end

depends 'apt'
depends 'ark'
depends 'database'
depends 'mysql', '~> 8.2.0'
depends 'mysql2_chef_gem'

source_url 'https://github.com/verifi-inc/mattermost' if respond_to?(:source_url)
issues_url 'https://github.com/verifi-inc/mattermost/issues' if respond_to?(:issues_url)

