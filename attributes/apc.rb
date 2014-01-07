#
# Author:: Panagiotis Papadomitsos (pj@ezgr.net)
#
# Cookbook Name:: php
# Attribute:: apc
#
# Copyright:: 2012, Panagiotis Papadomitsos
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

default['php']['apc']['enabled'] = 1
default['php']['apc']['cache_by_default'] = 1
default['php']['apc']['coredump_unmap'] = 1
default['php']['apc']['enable_cli'] = 0
default['php']['apc']['file_update_protection'] = 2
default['php']['apc']['gc_ttl'] = 3600
default['php']['apc']['include_once_override'] = 0
default['php']['apc']['localcache'] = 1
default['php']['apc']['local_size'] = '128M'
default['php']['apc']['max_file_size'] = '128K'
default['php']['apc']['mmap_file_mask'] = '/apc.shm.XXXXXX'
default['php']['apc']['num_files_hint'] = 1024
default['php']['apc']['report_autofilter'] = 0
default['php']['apc']['rfc1867'] = 1
default['php']['apc']['rfc1867_freq'] = "5"
default['php']['apc']['rfc1867_name'] = "APC_UPLOAD_PROGRESS"
default['php']['apc']['rfc1867_prefix'] = "upload_"
default['php']['apc']['shm_segments'] = 1
default['php']['apc']['shm_size'] = '128M'
default['php']['apc']['stat'] = 1
default['php']['apc']['ttl'] = '7200'
default['php']['apc']['user_ttl'] = '7200'
default['php']['apc']['write_lock'] = 1
default['php']['apc']['optimization'] = 0
default['php']['apc']['stat_ctime'] = 1
default['php']['apc']['canonicalize'] = 1
