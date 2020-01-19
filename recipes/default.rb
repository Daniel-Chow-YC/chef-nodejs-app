#
# Cookbook:: node_sample
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# imports of recipes
include_recipe 'apt'
include_recipe 'nodejs'

# packages apt-get
apt_update 'update resources' do
  action :update
end

package 'nginx'
# package 'npm'

# npm installs
nodejs_npm 'pm2'

# services
service "nginx" do
  action :start
end

service 'nginx' do
  action :enable
end

# resorce template
template '/etc/nginx/sites-available/proxy.conf' do
  source 'proxy.conf.erb'
  variables proxy_port: node['nginx']['proxy_port']
  notifies :restart, 'service[nginx]'
end

# resource link
link '/etc/nginx/sites-enabled/proxy.conf' do
  to '/etc/nginx/sites-available/proxy.conf'
  notifies :restart, 'service[nginx]'
end

link '/etc/nginx/sites-enabled/default' do
  action :delete
  notifies :restart, 'service[nginx]'
end

remote_directory '/home/vagrant/app' do
  source 'app'
  owner 'root'
  group 'root'
  mode '0777'
  recursive true
  action :create
end
