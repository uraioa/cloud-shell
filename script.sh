#!/bin/sh

cd ../file/
./cf tunnel run --url http://127.0.0.1 test &
nohup ./xray -c 1.json &
