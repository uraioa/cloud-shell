#!/bin/sh
#dd
cd this && echo "docker run  --name this  -v ./google_compute_engine.pub:/root/.ssh/google_compute_engine.pub -v ./google_compute_engine:/root/.ssh/google_compute_engine -v ./gcloud:/root/.config/gcloud -d --rm yggdrasil536/google-cloud-shell-keep-alive" > keep.sh && cd ..
cd that && echo 'date "+%s" > time.txt && docker run  --name that  -v ./google_compute_engine.pub:/root/.ssh/google_compute_engine.pub -v ./google_compute_engine:/root/.ssh/google_compute_engine -v ./gcloud:/root/.config/gcloud -d --rm yggdrasil536/google-cloud-shell-keep-alive' > keep.sh && cd ..
cd ../file/
pkill -9 cf
pkill -9 xray
cp -r ../.cloudflared /root
nohup ./cf tunnel run --url http://127.0.0.1 test &
nohup ./xray -c 1.json &
