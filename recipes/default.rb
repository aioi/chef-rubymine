#
# Cookbook Name:: andia-rubymine
# Recipe:: default
#
# Copyright 2014, Aioi Nissay Dowa Insurance Company Australia Pty Ltd
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Install Sun Java
node.set['java']['install_flavor'] = 'oracle'
node.set['java']['oracle']['accept_oracle_download_terms'] = true
include_recipe 'java'

basename = "RubyMine-#{node['rubymine']['version']}"
rubymine_url = "#{node['rubymine']['base_url']}/#{basename}.tar.gz"
user = node['rubymine']['user'] || node['current_user']

# Download the tarball
remote_file "#{Chef::Config[:file_cache_path]}/#{basename}.tar.gz" do
  action :create_if_missing
  backup false
  mode 0644

  checksum node['rubymine']['checksum'] if node['rubymine']['checksum']
  source rubymine_url
end

# Create the Applications directory
directory "/home/#{user}/Applications" do
  owner user
  group user
  mode '0755'
end

# Install rubymine
bash 'Install rubymine' do
  user user
  group user
  cwd "/home/#{user}/Applications"
  code "tar -zxf #{Chef::Config[:file_cache_path]}/#{basename}.tar.gz"
  not_if "test -d /home/#{user}/Applications/#{basename}"
end

# Set up the symbolic link
link "/home/#{user}/Applications/rubymine" do
  to "/home/#{user}/Applications/#{basename}"
end

# Create the Desktop Entry
case node['platform_family']
  when 'debian'
    template '/usr/share/applications/rubymine.desktop' do
      source 'rubymine.desktop.erb'
      mode '0644'
    end
end

# Increase inotify watch limit
sysctl_param 'fs.inotify.max_user_watches' do
  value node['rubymine']['max_user_watches']
end
