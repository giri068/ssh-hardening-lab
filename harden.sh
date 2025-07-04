#!/bin/bash

# Set SSH Port
sed -i 's/#Port 22/Port 2424/' /etc/ssh/sshd_config
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config
systemctl restart ssh

# Add user
useradd -m developer1
mkdir -p /home/developer1/.ssh
chown -R developer1:developer1 /home/developer1/.ssh
chmod 700 /home/developer1/.ssh

# Setup authorized_keys
cp /tmp/id_rsa.pub /home/developer1/.ssh/authorized_keys
chown developer1:developer1 /home/developer1/.ssh/authorized_keys
chmod 600 /home/developer1/.ssh/authorized_keys

# UFW
ufw allow 2424/tcp
ufw allow from 192.168.56.102 to any port 2424
ufw --force enable
