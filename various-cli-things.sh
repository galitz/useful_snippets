#
# poor man's way to find how many threads are running for InsightVM AWS discovery connector polling
grep AWS-Poller-Thread /opt/rapid7/nexpose/nsc/logs/eso.log | awk '{print $4}' | sort -u


cat master_data  | jq '.orgs | length'  # JSON: count the number of orgs in master_data file

$ id -Gn "user"  # prints out groups that a user is a member of (including LDAP groups)
