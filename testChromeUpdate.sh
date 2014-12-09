#!/bin/bash

fileURL="https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
chrome_dmg="/tmp/chrome.dmg"

/usr/bin/curl -Lo "$chrome_dmg" "$fileURL"

hdiutil attach "$chrome_dmg" -nobrowse -noverify -noautoopen

cp -r /Volumes/Google\ Chrome/Google\ Chrome.app /Applications/

/usr/bin/hdiutil detach -force /Volumes/Google\ Chrome

/bin/rm -rf "$chrome_dmg"
exit 0
