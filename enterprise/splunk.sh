#!/usr/bin/env bash

dpkg -i /vagrant/splunk-7.0.1-2b5b15c4ee89-linux-2.6-amd64.deb
/opt/splunk/bin/splunk start --accept-license
