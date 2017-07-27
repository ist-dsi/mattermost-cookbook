require 'spec_helper'

describe 'mattermost::database' do
  packages = %w(
    mysql-client-5.6
    mysql-client-core-5.6
    mysql-common
    mysql-common-5.6
    mysql-server-core-5.6
  )

  packages.each do |pkg|
    describe package(pkg) do
      it { should be_installed }
    end
  end

  describe process('mysqld') do
    it { should be_running }
  end

  describe port(3306) do
    it { should be_listening }
  end
end
