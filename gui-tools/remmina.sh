#!/bin/bash

# Remmina
sudo apt-add-repository -y ppa:remmina-ppa-team/remmina-next
sudo apt-get update
sudo apt-get install -y remmina remmina-plugin-rdp libfreerdp-plugins-standard 