#!/bin/bash

git clone https://${user}:${password}@${git_conf_linux} /root/conf-linux

cd /root/conf-linux/

/bin/bash conf-linux.sh

/bin/bash conf-zsh.sh

/bin/bash -c