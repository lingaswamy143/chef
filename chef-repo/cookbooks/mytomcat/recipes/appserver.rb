#
# Cookbook:: .
# Recipe:: appserver
#
# Copyright:: 2018, The Authors, All Rights Reserved.
apt_update 'updating packages' do
    action :update
end
multiplepackages = ['tomcat8','tomcat8-docs','tomcat8-examples','tomcat8-admin']
apt_package 'installing multiple packages' do
    package_name multiplepackages
    action :install
end
service 'tomcat8' do
  action :start
end
file '/tmp/file.txt' do
  content data_bag_item('appserver', 'password', 'devops')
  action :create
end


