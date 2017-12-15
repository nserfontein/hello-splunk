# Download and Setup
###Download Splunk Enterprise to current directory
```bash
wget -O splunk-7.0.1-2b5b15c4ee89-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.0.1&product=splunk&filename=splunk-7.0.1-2b5b15c4ee89-linux-2.6-amd64.deb&wget=true'
```

### Download Universal Forwarder to current directory
```bash
wget -O splunkforwarder-7.0.1-2b5b15c4ee89-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.0.1&product=universalforwarder&filename=splunkforwarder-7.0.1-2b5b15c4ee89-linux-2.6-amd64.deb&wget=true'
```

# Start Splunk Server
```bash
vagrant up splunk-server --no-provision
vagrant snapshot save splunk-server blank
vagrant provision splunk-server
vagrant snapshot save splunk-server fresh
```

# Configure Splunk Server
- Browse http://172.28.128.10:8000

### Setup Forwarder Monitoring
- Main Settings > Monitoring Console
- Sub Settings > Forwarder Monitoring Setup > Enable > Save > Continue
- Main Settings > Forwarding and receiving > Configure receiving > New
    - Port: 9997

# Start Splunk Forwarder
```bash
vagrant up splunk-forwarder1 --no-provision
vagrant snapshot save splunk-forwarder1 blank
vagrant provision splunk-forwarder1
vagrant snapshot save splunk-forwarder1 fresh
```

# Confirm Forwarders on Server
- Run a Search > Data Summary


# Resources
Pluralsight - Analyzing Machine Data with Splunk- Module 5