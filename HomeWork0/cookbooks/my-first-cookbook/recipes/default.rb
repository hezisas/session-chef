#
# Cookbook Name:: my-first-cookbook
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
template '/opt/test-task1.txt'

template '/opt/test-task1.txt' do
  source 'test-task1.erb'
  variables({
	:package_name => "unzip",
	:package_version => "6.0-9ubuntu1.5"
  })
  action :create
  owner 'root'
  group 'root'
end

package 'unzip' do
  version '6.0-9ubuntu1.5'
  action :install
end

