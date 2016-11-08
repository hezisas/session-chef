#
# Cookbook Name:: my-first-cookbook
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#

package 'python-mysqldb' do
	action :install
end 

package 'python-pip' do
	action :install
end 

package 'libapache2-mod-wsgi' do
	action :install
end 

execute 'install python package flask' do
	command 'pip install flask'
end

service  'apache2' do
  	action :stop
end

cookbook_file '/etc/apache2/sites-enabled/AAR-apache.conf' do 
	source 'create_vhost' 
	owner 'root'
	group 'root'
	mode '0644'
	action :create
end

cookbook_file '/var/www/AAR/AAR_config.py' do 
 	source 'db_params'
	owner 'www-data'
	group 'www-data'
	mode '0755'
	action :create
end

execute 'create db' do
     command 'mysql -proot < make_AARdb.sql'
end

