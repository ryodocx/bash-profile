#!/bin/bash

# url
URL=https://go.microsoft.com/fwlink/?LinkID=760868

# VS Code
rm tmp
curl -L $URL -o tmp
sudo dpkg -i tmp
rm tmp
sudo apt-get install -f -y libgtk2.0-0 libxss1 libgconf-2-4 libasound2
