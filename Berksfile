source 'https://supermarket.chef.io'

metadata

cookbook 'tar', '~> 2.2.0'

group :integration do
  cookbook 'mariadb'
  cookbook 'selinux'
  cookbook 'mysql_test', path: 'test/cookbooks/mysql_test'
end
