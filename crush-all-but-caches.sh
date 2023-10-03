systemctl daemon-reload
systemctl stop lotus-daemon.service
systemctl stop lotus-worker.service
systemctl stop lotus-miner.service
systemctl stop boostd.service
rm -r /mnt/sectors/*
rm -r /mnt/sealing/*
rm -r ~lotus/.lotus_calibnet
rm -r ~lotus/.lotusminer_calibnet
rm -r ~lotus/go
rm -r ~lotus/
rm -r ~boost/
deluser lotus
deluser boost
rm -r /usr/local/src/cuda-samples
rm /usr/local/bin/lotus
rm /usr/local/bin/lotus-miner
rm /usr/local/bin/lotus-worker
cp ~lotus/.bashrc.stock ~lotus/.bashrc
rm /etc/systemd/system/lotus-daemon.service
rm /etc/systemd/system/lotus-miner.service
rm /etc/systemd/system/lotus-worker.service
rm /etc/systemd/system/boostd.service
rm -r /var/log/lotus
systemctl daemon-reload
systemctl reset-failed
systemctl daemon-reload
#rm -r /opt/cache/param_cache/
#rm -r /opt/cache/parent_cache/
rm -r /opt/go
rm /etc/profile.d/golang.sh
rm /etc/profile.d/npm.sh
rm -r /usr/local/lib/npm
rm /etc/apt/sources.list.d/deb_nodesource_com_node_18_x.list
apt remove --purge -y nodejs
apt update
