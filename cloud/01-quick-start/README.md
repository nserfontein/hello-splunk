# Log into Splunk Cloud
- Managed: https://mycompany.splunkcloud.com/
- Self-service: https://prd-p-abcdef123456.cloud.splunk.com/

# Upload a file
- Settings > Indexes > New Index
    - Index Name: test1
    - Max Size: 10MB
    - Retention: 1
- Settings > Add Data > Upload > Select File > /var/log/syslog > Next
    - Source type: syslog
    - Next
    - Index: test1
    - Review
    - Submit
    - Start Searching
    
# Resources
http://docs.splunk.com/Documentation/SplunkCloud/6.6.3/User/SplunkCloudQuickstart