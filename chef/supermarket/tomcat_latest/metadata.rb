name             "tomcat_latest"
maintainer       "Chendil Kumar Manoharan"
maintainer_email "mkchendil@gmail.com"
license          "Apache 2.0"
description      "Installs and Configures latest Apache Tomcat 6 or 7 or specified version"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.6"

%w{ java }.each do |cb|
  depends cb
end

%w{ suse centos fedora ubuntu debian}.each do |os|
  supports os
end

recipe "tomcat::default", "Installs and Configures latest Apache Tomcat 6 or 7 or specified version"