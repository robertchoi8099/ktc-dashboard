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
set_database_servers "dashboard"
set_service_endpoint "identity-api"
set_service_endpoint "identity-admin"
set_service_endpoint "image-registry"
set_service_endpoint "image-api"
set_service_endpoint "network-api"
set_service_endpoint "compute-api"
set_service_endpoint "compute-ec2-api"
set_service_endpoint "compute-ec2-admin"

include_recipe "openstack-common"
include_recipe "openstack-common::logging"
include_recipe "ktc-dashboard::server"

