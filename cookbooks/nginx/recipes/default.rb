#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apt"

# install package
package 'nginx' do
  action :install
end

# start service
service 'nginx' do
  action [ :enable, :start ]
end

# copy file
cookbook_file "/usr/share/nginx/www/index.html" do
  source "index.html"
  mode "0644"
end
