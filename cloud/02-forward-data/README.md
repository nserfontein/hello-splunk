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
./splunk start
./splunk install app /vagrant/splunkclouduf.spl -auth admin:changeme
./splunk restart
```

# TODO
Complete

# Resources
http://docs.splunk.com/Documentation/SplunkCloud/6.6.3/User/ForwardDataToSplunkCloudFromLinux