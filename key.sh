#!/bin/bash

# Generate ssh keys on local machine

echo | ssh-keygen -t rsa
echo | ssh-keygen -t ecdsa
echo | ssh-keygen -t ed25519 

# key 
echo| 
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
cat ~/.ssh/id_ecdsa.pub >> ~/.ssh/authorized_keys
cat ~/.ssh/id_ed25519.pub >> ~/.ssh/authorized_keys

cat ~/.ssh/authorized_keys

# ssh trainee@10.0.2.46 'bash -s' < "remote_script.sh"

scp ~/.ssh/authorized_keys trainee@10.0.2.46:~/.ssh/authorized_keys

# sleep 10
