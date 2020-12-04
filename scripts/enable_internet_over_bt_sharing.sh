#!/bin/bash
sudo sysctl net.ipv4.ip_forward=1
internet0=bnep0
net0=wlp3s0
sudo iptables -t nat -A POSTROUTING -o $internet0 -j MASQUERADE
sudo iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i $net0 -o $internet0 -j ACCEPT

#sudo nft add table ip nat
#sudo nft add chain ip nat prerouting { type nat hook prerouting priority 0 \; }
#sudo nft add chain ip nat postrouting { type nat hook postrouting priority 100 \; }
#sudo nft add rule nat postrouting oifname wlp3s0 masquerade
