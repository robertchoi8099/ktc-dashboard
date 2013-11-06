#
# Cookbook Name:: ktc-dashboard
# Recipe:: default
#
# Copyright 2013, KT Cloudware
#
# All rights reserved - Do Not Redistribute
#

include_recipe "services"
include_recipe "ktc-utils"

ip = KTC::Network.address "management"

Services::Connection.new run_context: run_context
horizon = Services::Member.new node[:fqdn],
  service: "horizon",
  port: 443,
  proto: "tcp",
  ip: ip

horizon.save

# http://jira.ktcloudware.com/browse/UCLOUDNG-588
# Add response time format to apache log format
chef_gem "chef-rewind"
require 'chef/rewind'

include_recipe "openstack-dashboard::server"

rewind :template => node["openstack"]["dashboard"]["apache"]["sites-path"] do
  cookbook "ktc-dashboard"
end
