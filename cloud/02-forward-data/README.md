# Vagrant Setup
```bash
vagrant ssh
sudo -i
```

# Download the universal forwarder
```bash
wget -O splunkforwarder-7.0.1-2b5b15c4ee89-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.0.1&product=universalforwarder&filename=splunkforwarder-7.0.1-2b5b15c4ee89-linux-2.6-amd64.deb&wget=true'
```

# Install the universal forwarder
```bash
dpkg -i splunkforwarder-7.0.1-2b5b15c4ee89-linux-2.6-amd64.deb
```

# Download and install the universal forwarder credentials
- Splunk Cloud Account > App > Universal Forwarder
- Save splunkclouduf.spl file to this directory
- Make sure it is added to .gitignore
```bash
cd /opt/splunkforwarder/bin/
./splunk start --accept-license
./splunk install app /vagrant/splunkclouduf.spl
./splunk restart
```

# Forward data from files and directories to Splunk Cloud
```bash
# add directory monitor
./splunk add monitor /var/log/

# add file monitor 
./splunk add monitor source /var/log/syslog

# edit monitor (setting the default parameters)
./splunk edit monitor /var/log/ -host vagrant -sourcetype syslog -index main

# confirm:
logger this is a message that will be displayed in /var/log/syslog
```

# Cleanup
```bash
./splunk remove monitor /var/log/

./splunk stop

dpkg -P splunkforwarder
```

# Configuration Locations
- /opt/splunkforwarder/etc/system/local
- /opt/splunkforwarder/etc/apps/search/local

# Resources
http://docs.splunk.com/Documentation/SplunkCloud/6.6.3/User/ForwardDataToSplunkCloudFromLinux
http://docs.splunk.com/Documentation/SplunkCloud/6.6.3/User/Configureinputs
http://docs.splunk.com/Documentation/Forwarder/7.0.1/Forwarder/Configuretheuniversalforwarder