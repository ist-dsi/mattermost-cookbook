name 'mattermost-cookbook'
license 'Apache-2.0'
version '5.23.2'

chef_version '>= 12.19'

maintainer 'Simão Silva'
maintainer_email 'simao.silva@tecnico.ulisboa.pt'

description 'Installs/Configures mattermost https://about.mattermost.com'
%w(redhat centos).each do |el|
  supports el, '>= 7.0'
end

supports 'debian', '>= 9.0'
supports 'ubuntu', '>= 18.04'

depends 'tar'

source_url 'https://github.com/ist-dsi/mattermost-cookbook'
issues_url 'https://github.com/ist-dsi/mattermost-cookbook/issues'
