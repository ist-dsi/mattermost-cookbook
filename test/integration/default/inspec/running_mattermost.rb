describe user('mattermost') do
  it { should exist }
end

describe file('/opt/mattermost') do
  it { should exist }
  it { should be_directory }
  it { should be_owned_by 'mattermost' }
  it { should be_grouped_into 'mattermost' }
  its('mode') { should cmp '0755' }
end

describe file('/opt/mattermost/bin/platform') do
  it { should exist }
  it { should be_file }
  it { should be_executable }
  it { should be_owned_by 'mattermost' }
  it { should be_grouped_into 'mattermost' }
  its('mode') { should cmp '0755' }
end

describe file('/opt/mattermost/data') do
  it { should exist }
  it { should be_directory }
  it { should be_owned_by 'mattermost' }
  it { should be_grouped_into 'mattermost' }
  its('mode') { should cmp '0755' }
end

describe file('/opt/mattermost/config/config.json') do
  it { should exist }
  it { should be_file }
  it { should be_readable }
  it { should be_owned_by 'mattermost' }
  it { should be_grouped_into 'mattermost' }
  its('mode') { should cmp '0640' }
  its('content') { should include 'ServiceSettings' }
  its('content') { should include 'TrustedProxyIPHeader' }
end

describe service('mattermost') do
  it { should be_running }
  it { should be_enabled }
end
