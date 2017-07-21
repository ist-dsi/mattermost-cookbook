name 'mattermost'
license 'Apache-2.0'
version '1.0.0'

chef_version '>= 12.1'

maintainer 'David Duarte'
maintainer_email 'david.duarte@tecnico.ulisboa.pt'

description 'Installs/Configures mattermost http://mattermost.com'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

%w(redhat centos debian ubuntu).each do |os|
  supports os
end

depends 'apt'
depends 'ark'
depends 'database'
depends 'mysql', '~> 8.2.0'
depends 'mysql2_chef_gem'

source_url 'https://github.com/ist-dsi/mattermost-cookbook' if respond_to?(:source_url)
issues_url 'https://jira.fenixedu.org/browse/MCC' if respond_to?(:issues_url)
