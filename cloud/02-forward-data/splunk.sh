#!/usr/bin/env bash

# Install Splunk Forwarder
wget -O splunkforwarder-7.0.1-2b5b15c4ee89-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.0.1&product=universalforwarder&filename=splunkforwarder-7.0.1-2b5b15c4ee89-linux-2.6-amd64.deb&wget=true'
dpkg -i splunkforwarder-7.0.1-2b5b15c4ee89-linux-2.6-amd64.deb

