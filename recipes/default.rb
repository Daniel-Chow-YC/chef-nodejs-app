#
# Cookbook:: node_sample
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# imports of recipes
include_recipe 'apt'
include_recipe 'nodejs'

# packages apt-get
apt_update
package 'nginx'
package 'npm'

# npm installs
nodejs_npm 'pm2'

# services
service "nginx" do
  action :start
end

service 'nginx' do
  action :enable
end

# node.default['nodejs']['install_method'] = 'binary'
# node.default['nodejs']['version'] = '5.9.0'
# node.default['nodejs']['binary']['checksum'] = '99c4136cf61761fac5ac57f80544140a3793b63e00a65d4a0e528c9db328bf40'
