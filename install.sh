#!/bin/sh
#apt-get update
#apt-get upgrade -y
apt-get install -y git puppet librarian-puppet 
echo "Updating / Cloning /opt/puppet"
if [ -d /opt/puppet ] ; then
	cd /opt/puppet
	git pull
	rm Puppetfile.lock
	librarian-puppet clean
	librarian-puppet install --verbose
else
	git clone https://github.com/rattermeyer/puppet-main.git /opt/puppet
	cd /opt/puppet
	librarian-puppet install --verbose --clean
fi
echo "applying puppet"
puppet apply --modulepath=/opt/puppet/modules/ /opt/puppet/manifests/nodes.pp
