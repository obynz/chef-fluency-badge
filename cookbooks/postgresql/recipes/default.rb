#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'postgresql-server' do
	notifies :run, 'execute[postgresql-init]'
end

execute 'postgresql-init' do
	command 'postgresql-setup initdbb'
	action :nothing
end

service 'postgresql' do
	action [:enabble, :start]
end
