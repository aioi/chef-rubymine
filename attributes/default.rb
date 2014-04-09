#
# Cookbook Name:: andia-rubymine
# Attributes:: default
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

default['rubymine']['version']  = '6.3'
default['rubymine']['checksum'] = '7cfce21f1c0cbdf83b9f0e6dbbd1d1f0'
default['rubymine']['base_url'] = 'http://download.jetbrains.com/ruby'
default['rubymine']['user']     = node['current_user']
default['rubymine']['max_user_watches'] = 524288
