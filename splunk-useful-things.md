Reverse the results of a search:
```
search something | reverse
```


Example: Search for logins to joomla admin to a specific site from a specific IP (data taken from botsv1 splunk example dataset, https://github.com/splunk/botsv1).
```
index=botsv1 earliest=0 http_method=POST uri="/joomla/administrator/index.php" site="imreallynotbatman.com" src_ip="23.22.63.114" |  table timestamp,form_data
```
