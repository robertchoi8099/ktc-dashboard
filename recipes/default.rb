#
# Cookbook Name:: ktc-dashboard
# Recipe:: default
#
# Copyright 2013, KT Cloudware
#
# All rights reserved - Do Not Redistribute
#

include_recipe "ktc-utils"

KTC::Attributes.set

include_recipe "openstack-common"
include_recipe "openstack-common::logging"
include_recipe "ktc-dashboard::server"
