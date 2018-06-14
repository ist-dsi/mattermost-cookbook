source 'https://supermarket.chef.io'

metadata

cookbook 'tar', '~> 2.1.1'

group :integration do
  cookbook 'selinux'
  cookbook 'mysql_test', path: 'test/cookbooks/mysql_test'
end
