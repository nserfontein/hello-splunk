#!/usr/bin/env bash

dpkg -i /vagrant/provision/splunk-7.0.1-2b5b15c4ee89-linux-2.6-amd64.deb
/opt/splunk/bin/splunk start --accept-license
/opt/splunk/bin/splunk enable boot-start -user root
