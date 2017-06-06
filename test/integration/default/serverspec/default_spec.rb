require 'spec_helper'

describe 'mattermost::default' do
  describe user('mattermost') do
    it { should exist }
  end

  describe file('/opt/mattermost') do
    it { should exist }
    it { should be_directory }
    it { should be_owned_by 'mattermost' }
    it { should be_grouped_into 'root' }
    it { should be_mode 755 }
  end

  describe file('/opt/mattermost/bin/platform') do
    it { should exist }
    it { should be_file }
    it { should be_executable }
    it { should be_owned_by 'mattermost' }
    it { should be_grouped_into 'root' }
    it { should be_mode 755 }
  end

  describe file('/mattermost/data') do
    it { should exist }
    it { should be_directory }
    it { should be_owned_by 'mattermost' }
    it { should be_grouped_into 'root' }
    it { should be_mode 755 }
  end

  describe file('/opt/mattermost/config/config.json') do
    it { should exist }
    it { should be_file }
    it { should be_readable }
    it { should be_owned_by 'mattermost' }
    it { should be_grouped_into 'root' }
    it { should be_mode 640 }
    it { should contain 'ServiceSetting' }
  end

  describe process('platfor') do
    it { should be_running }
  end

  describe port(8065) do
    it { should be_listening }
  end
end
