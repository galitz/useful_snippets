#!/bin/sh
# grabs current public ip and retrieves geolocation data
curl https://ipinfo.io/$(curl -s ifconfig,me)
