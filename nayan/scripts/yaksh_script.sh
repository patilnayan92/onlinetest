#!/bin/bash
# Basic script to install pip packages and run the nayan code server command

chown -R nobody output
chmod -R a+rwX output
chmod -R a+rX data nayan
chmod -R o-w data nayan
echo "** [CONTAINER] Installing python dependencies **"
pip3 install -r ./requirements-codeserver.txt
echo "** [CONTAINER] Running code server **"
touch server_running.txt
/usr/bin/sudo -su nobody python3 -m nayan.code_server
