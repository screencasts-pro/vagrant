include_recipe "tomcat_latest"

file "/etc/rc.d/tomcat" do
  action :delete
end

template "/etc/init.d/tomcat7" do
  source "tomcat7.erb"
  mode "0755"
  owner "root"
  group "root"
  notifies :restart, "service[tomcat7]"
end

template "#{node['vagrant_tomcat']['tomcat_home']}/conf/tomcat-users.xml"

service "tomcat7" do
  service_name "tomcat7"
  supports :restart => true, :status => true
  action [:start, :enable]
end