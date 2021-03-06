#
# Author::  Joshua Timberman (<joshua@opscode.com>)
# Author::  Seth Chisamore (<schisamo@opscode.com>)
# Author::  Panagiotis Papadomitsos (<pj@ezgr.net>)
#
# Cookbook Name:: php
# Recipe:: module_apc
#
# Copyright 2009-2011, Opscode, Inc.
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

if node['php']['ius'] == "5.4"
  packages = %w{ php54-pecl-apc }
elsif node['php']['ius'] == "5.3"
  packages = %w{ php53u-pecl-apc }
else
  packages = %w{ php-pecl-apc }
end

pkgs = value_for_platform(
  [ "centos", "redhat", "fedora" ] => {
    "default" => packages
  },
  [ "debian", "ubuntu" ] => {
    "default" => %w{ php-apc }
  }
)

pkgs.each do |pkg|
  package pkg do
    action :install
  end
end

template "#{node['php']['ext_conf_dir']}/apc.ini" do
  source 'apc.ini.erb'
  owner 'root'
  group 'root'
  mode 00644
end
