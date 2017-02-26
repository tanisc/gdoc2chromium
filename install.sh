pyinstaller gdoc2chromium.py -F
sudo cp dist/gdoc2chromium /usr/bin/gdoc2chromium
rm build -R
rm dist -R
rm gdoc2chromium.spec
