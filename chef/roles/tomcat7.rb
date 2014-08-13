name "tomcat7"
description "Installs all recipes needed for Java development deploying to Tomcat"
run_list "recipe[java]","recipe[vagrant_tomcat]"
default_attributes "java" => { "jdk_version" => "7" }
