#
# Cookbook Name:: ktc-dashboard
# Recipe:: logrotate
#
# Copyright 2013, KT Cloudware
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'logrotate'

logrotate_app "apache2" do
  path "/var/log/apache2/*.log"
  rotate 4
  create "640 root adm"
  sharedscripts true
  postrotate "\t/etc/init.d/apache2 reload > /dev/null"
  prerotate "\tif [ -d /etc/logrotate.d/httpd-prerotate ]; then run-parts /etc/logrotate.d/httpd-prerotate; fi;" 
end
