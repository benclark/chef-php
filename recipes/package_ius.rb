#
# Author::  Benjamin Clark (<benjamin.clark@jacksonriver.com>)
#
# Cookbook Name:: php
# Recipe:: package_ius
#
# Copyright 2014, Jackson River
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

include_recipe "yum"

yum_repository 'ius' do
  repositoryid 'ius'
  enabled true
  failovermethod 'priority'
  gpgkey 'http://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY'
  gpgcheck true
  case node['platform_version'].to_i
  when 5
    description 'IUS Community Packages for Enterprise Linux 5 - $basearch'
    mirrorlist 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el5&arch=$basearch'
  when 6
    description 'IUS Community Packages for Enterprise Linux 6 - $basearch'
    mirrorlist 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el6&arch=$basearch'
  end
  action :create
end
