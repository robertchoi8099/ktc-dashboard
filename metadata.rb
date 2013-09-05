name             'ktc-dashboard'
maintainer       'KT Cloudware'
maintainer_email 'wil.reichert@kt.com'
license          'All rights reserved'
description      'Installs/Configures ktc-dashboard'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w{ centos ubuntu }.each do |os|
  supports os
end

%w{
  ktc-utils
  openstack-common
  openstack-dashboard
  logrotate
}.each do |dep|
  depends dep
end
