name 'mattermost-cookbook'
license 'Apache-2.0'
version '1.5.1'

chef_version '>= 12.7'

maintainer 'David Duarte'
maintainer_email 'david.duarte@tecnico.ulisboa.pt'

description 'Installs/Configures mattermost http://mattermost.com'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

%w(redhat centos).each do |el|
  supports el, '>= 7.0'
end

supports 'debian', '>= 9.0'
supports 'ubuntu', '>= 16.04'

depends 'ark'

source_url 'https://github.com/ist-dsi/mattermost-cookbook' if respond_to?(:source_url)
issues_url 'https://github.com/ist-dsi/mattermost-cookbook/issues' if respond_to?(:issues_url)
