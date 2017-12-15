#!/usr/bin/env bash

dpkg -i /vagrant/splunkforwarder-7.0.1-2b5b15c4ee89-linux-2.6-amd64.deb
/opt/splunkforwarder/bin/splunk start --accept-license
/opt/splunkforwarder/bin/splunk enable boot-start -user root

/opt/splunkforwarder/bin/splunk add forward-server 172.28.128.10:9997 -auth 'admin:changeme'

# add testing monitor
/opt/splunkforwarder/bin/splunk add monitor /var/log/ -auth 'admin:changeme'
