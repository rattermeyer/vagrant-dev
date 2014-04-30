#!/bin/sh
#apt-get update
#apt-get upgrade -y
apt-get install -y git puppet librarian-puppet 
echo "Updating / Cloning /opt/puppet"
if [ -d /opt/puppet ] ; then
	cd /opt/puppet
	git pull
	librarian-puppet update --verbose
else
	git clone https://RAT@git.opitz-consulting.de/scm/~rat/public-puppet.git /opt/puppet
	librarian-puppet install --verbose --clean
fi
echo "applying puppet"
puppet apply --modulepath=/opt/puppet/modules/ /opt/puppet/manifests/nodes.pp
