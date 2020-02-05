#!/bin/bash

#install cron (-y)
#(-y)the -y switch confirms that you want to download and install the package 
sudo apt-get install cron-apt -y
# write all output info into /var/log/update-$(date format).log
sudo touch /var/log/update-$(date +%Y%m%d).log
#update - updates the list of packages but do not install
sudo apt-get update
#full-upgrade - performs the function of upgrade but will remove currently installed packages if this is needed to upgrade the system as a whole (fixing bad dependencies then)
sudo apt-get upgrade -y > /var/log/update-$(date +%Y%m%d).log
#to get to know what are the updates available for your system. The command will list packages with the new version available for the system and the current version.
#autoremove, autoclean and clean - clean old packages which are not needed any more
sudo apt-get autoremove
sudo cp auto_update.sh /etc/cron.weekly

