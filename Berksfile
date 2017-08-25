source 'https://supermarket.chef.io'

metadata

cookbook 'ark'

group :integration do
  cookbook 'selinux'
  cookbook 'mysql_test', path: 'test/cookbooks/mysql_test'
end
