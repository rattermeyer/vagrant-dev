vagrant-dev
===========

Vagrant-dev allows to easily build Java / JavaScript development environments based on Ubuntu 

What's installed
================

* git
* meld
* tmux
* Open JDK
* firefox
* chromium
* ubuntu-desktop
* IntelliJ
* SpringSource Tool Suite
* Apache Maven 
* JBoss Wildfly
* Apache Tomcat 7
* node.js
* n: Node version management
* Yeoman
* Protractor
* Squirrel SQL

Getting started
===============

This is a fairly simple project to get up and running.
The project will set up a vagrant box with 4 GB memory requirements.
The procedure for starting up a vagrant box is as follows:

* Install [Vagrant](http://www.vagrantup.com)
* Clone the project. (There’s only master branch.)
* Run the command `vagrant up`

This will take some time (around 60min for me).

Login in with user `dev` with password `pleasechange`

Tools are installed under `/opt`


Additional Steps
================
You might want to update VirtualBox Guest Additions. You should enable 3D acceleration in VirtualBox for the guest and increase graphics memory size.


Some internals
==============
Provisioning is performed with puppet. All puppet modules are available at [Github](https://github.com/rattermeyer).
They are not yet configurable and have some values hard coded, but it should be fairly straightforward to customize the modules.
If you have improvements, feel free to issue a pull request
