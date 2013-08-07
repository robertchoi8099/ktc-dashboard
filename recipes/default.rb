#
# Cookbook Name:: ktc-dashboard
# Recipe:: default
#
# Copyright 2013, KT Cloudware
#
# All rights reserved - Do Not Redistribute
#

class Chef::Recipe
  include KTCUtils
end

set_memcached_servers

include_recipe "openstack-common"
include_recipe "openstack-common::logging"
include_recipe "openstack-dashboard::server
