#!/bin/bash

sudo rm -rf /usr/share/gdoc2chromium
sudo rm /usr/share/mime/packages/gdoc.xml /usr/share/mime/packages/gslides.xml /usr/share/mime/packages/gsheet.xml /usr/share/mime/packages/gform.xml
sudo update-mime-database /usr/share/mime

grep -v gdoc2chromium.desktop $HOME/.local/share/applications/defaults.list > /tmp/defaults.list
mv -f /tmp/defaults.list $HOME/.local/share/applications/defaults.list
