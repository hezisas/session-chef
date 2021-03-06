#
# Cookbook Name:: my-first-cookbook
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#

node['mycookbook']['packages'].each do |pkg|
  package pkg do
        action :install
	end
end

execute 'install python package flask' do
	command 'pip install flask'
	not_if { File.exist?('/usr/local/bin/flask')}
end

cookbook_file '/etc/apache2/sites-enabled/AAR-apache.conf' do 
	action :create 
	owner 'root'
	group 'root'
	notifies :restart, 'service[apache2]', :delayed
end

#cookbook_file '/var/www/AAR/AAR_config.py' do 
 	#source 'AAR_config.py'
	#owner 'www-data'
	#group 'www-data'
	#mode '0644'
	#action :create
#end


service 'apache2' do
  	action [:start, :enable]
end

cookbook_file '/tmp/make_AARdb.sql' do 
 	action :create
	owner 'root'
	group 'root'
	notifies :run, 'execute[make_AARdb]', :immediate
	notifies :run, 'execute[CREATE USER]', :immediate
end

execute 'make_AARdb' do
	action :nothing
        command 'mysql -proot < /tmp/make_AARdb.sql'
end

execute 'CREATE USER' do
	action :nothing
	command "mysql -proot -e \"CREATE USER 'aarapp'@'localhost' IDENTIFIED BY '7ERwzg7E'\""
end

template '/etc/apache2/sites-enabled/AAR-apache.conf' do
  	action :create
	notifies :restart, 'service[apache2]', :delayed
end
