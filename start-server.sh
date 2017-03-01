#!/bin/bash

mkdir -p /pypiserver/packages
htpasswd -bcm /pypiserver/htpasswd.txt $USER $PASSWORD
pypi-server -p80 -P/pypiserver/htpasswd.txt --disable-fallback /pypiserver/packages
