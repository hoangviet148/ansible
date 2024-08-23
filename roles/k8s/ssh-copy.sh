#!/bin/bash

# ssh-keygen -t rsa -f ~/.ssh/id_rsa -q -P ""

for x in 128 129 130
do
    echo 192.168.75.$x
    sshpass -f ./password.txt ssh-copy-id -i /root/.ssh/id_rsa.pub -o StrictHostKeyChecking=no $1@192.168.75.$x
done

