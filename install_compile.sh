pyinstaller gdoc2chromium.py -F
sudo mkdir /usr/share/gdoc2chromium
sudo cp dist/gdoc2chromium /usr/share/gdoc2chromium/gdoc2chromium
sudo cp gdoc2chromium.desktop /usr/share/applications/gdoc2chromium.desktop
rm build -R
rm dist -R
rm gdoc2chromium.spec
sudo cp gdoc.xml /usr/share/mime/packages/
sudo cp gslide.xml /usr/share/mime/packages/
sudo cp gsheet.xml /usr/share/mime/packages/
sudo cp gform.xml /usr/share/mime/packages/
sudo update-mime-database /usr/share/mime
echo "application/x-gdoc=gdoc2chromium.desktop" >> $HOME/.local/share/applications/defaults.list
echo "application/x-gsheet=gdoc2chromium.desktop" >> $HOME/.local/share/applications/defaults.list
echo "application/x-gslide=gdoc2chromium.desktop" >> $HOME/.local/share/applications/defaults.list
echo "application/x-gform=gdoc2chromium.desktop" >> $HOME/.local/share/applications/defaults.list
