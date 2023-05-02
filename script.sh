#!/bin/sh
#dd
cd ../file/
pkill -9 cf
pkill -9 xray
cp -r .cloudflared /root
nohup ./cf tunnel run --url http://127.0.0.1 test &
nohup ./xray -c 1.json &
