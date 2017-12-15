# Setup
- Download Splunk Enterprise to current directory
- Add to .gitignore
```bash
wget -O splunk-7.0.1-2b5b15c4ee89-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.0.1&product=splunk&filename=splunk-7.0.1-2b5b15c4ee89-linux-2.6-amd64.deb&wget=true'
```
```bash
vagrant up
```

# Access Splunk Web
- Browse http://localhost:20001

# Basic commands
```bash
cd /opt/splunk/bin
./splunk start --accept-license
./splunk stop
./splunk restart
./splunk help
```