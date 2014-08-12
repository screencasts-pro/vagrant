Description
===========

Installs and configures latest Apache Tomcat version 6 or 7 or specified version.

Requirements
============

Platform:

* Suse, CentOS, Fedora, Ubuntu, Debian

The following Opscode cookbooks are dependencies:

* java

Attributes
==========

* `node['tomcat_latest']['tomcat_version']` - The tomcat version to be installed, default `7`
* `node["tomcat_latest"]["port"]` - The network port used by Tomcat's HTTP connector, default `8080`.
* `node["tomcat_latest"]["ssl_port"]` - The network port used by Tomcat's SSL HTTP connector, default `8443`.
* `node["tomcat_latest"]["ajp_port"]` - The network port used by Tomcat's AJP connector, default `8009`. 
* `node['tomcat_latest']['tomcat_install_loc']` - The tomcat install location, default `/tmp/apache`
* `node['tomcat_latest']['direct_download_version']` - Specify the tomcat version to download. Eg: 7.0.35, default `na`
* `node['tomcat_latest']['tomcat_user']` = Specify the user that tomcat will run as. default `root`
* `node['tomcat_latest']['java_options']` = Specify the JAVA_OPTS. default `Xmx128M`
* `node['tomcat_latest']['auto_start']` = Indicate whether to start the tomcat after installing the recipe. default `true`


Usage
=====

Simply include the recipe where you want Tomcat installed.

License and Author
==================

Author:: Chendil Kumar Manoharan (<mkchendil@gmail.com>)
Copyright:: 2013, Chendil Kumar

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
