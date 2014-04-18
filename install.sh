#!/bin/sh
#apt-get update
#apt-get upgrade -y
apt-get install -y git puppet librarian-puppet 
if [ -d /opt/puppet ] ; then
	cd /opt/puppet
	git pull
else
	git clone https://RAT@git.opitz-consulting.de/scm/~rat/public-puppet.git /opt/puppet
fi
cd /opt/puppet && librarian-puppet install
puppet apply --modulepath=/opt/puppet/modules/ /opt/puppet/manifests/nodes.pp
