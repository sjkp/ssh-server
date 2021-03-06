#!/bin/bash

set -e

echo $PUBLIC_KEY >> /root/.ssh/authorized_keys 

if [ "$1" = 'ssh-server' ]
then
    exec /usr/sbin/sshd -D
fi

exec "$@"
