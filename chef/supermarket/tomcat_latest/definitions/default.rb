
define :unzip_tomcat6or7,  :enable => true  do
  
   if params[:name]=="6"
 execute "Unzip Apache Tomcat 6 binary file" do
 user "#{node[:tomcat_latest][:tomcat_user]}"
 installation_dir = "/tmp"
 cwd installation_dir
 command "tar zxvf /tmp/apache-tomcat-6.*.tar.gz -C #{node[:tomcat_latest][:tomcat_install_loc]}/tomcat6" 
 action :run
end
end

 if params[:name]=="7"
execute "Unzip Apache Tomcat 7 binary file" do
  user "#{node[:tomcat_latest][:tomcat_user]}"
 installation_dir = "/tmp"
 cwd installation_dir
 command "tar zxvf /tmp/apache-tomcat-7.*.tar.gz -C #{node[:tomcat_latest][:tomcat_install_loc]}/tomcat7" 
 action :run
end
end 

if params[:name]=="d"

execute "Unzip Apache Tomcat binary file" do
 user "#{node[:tomcat_latest][:tomcat_user]}"
 installation_dir = "/tmp"
 cwd installation_dir
 command "tar zxvf /tmp/apache-tomcat-* -C #{node[:tomcat_latest][:tomcat_install_loc]}/tomcat" 
 action :run
end

end


end


define :template6or7,  :user => "vagrant"  do
  if params[:name]=="6"
template "/etc/rc.d/tomcat6" do
  source "tomcat6.erb"
  owner params[:enable]
  mode "0755"  
end
end

  if params[:name]=="7"
template "/etc/rc.d/tomcat7" do
  source "tomcat7.erb"
  owner params[:user]
  mode "0755"  
end
end

end