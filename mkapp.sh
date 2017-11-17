#!/bin/bash

# mkapp.sh, the app packager for macOS/X
# Usage:
# ./mkapp.sh exe
# Where exe is the actual executable you want to package.
# An info.plist is automatically generated for you.
# An icon is not provided.

APPNAME=Runtime #The .APP file name, .app extension is added automatically at the end of it
EXEDIR=$1 # executable name; above is the .app itself. MUST have no extension unless it is a.out
ICON=icons.icns # icon file, not necessary (but should be in ICNS format)
mkdir $APPNAME.app
mkdir $APPNAME.app/Contents
mkdir $APPNAME.app/Contents/Resources
mkdir $APPNAME.app/Contents/MacOS
echo APPLnone > $APPNAME.app/Contents/PkgInfo
cp $EXEDIR $APPNAME.app/Contents/MacOS
chmod 755 $APPNAME.app/Contents/MacOS/$EXEDIR # Make it executable with full app permissions
cat << EOF > $APPNAME.app/Contents/info.plist
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist SYSTEM "file://localhost/System/Library/DTDs/PropertyList.dtd">
<plist version="0.9">
<dict>
        <key>CFBundleName</key>
        <string>$APPNAME</string>
        <key>CFBundlePackageType</key>
        <string>APPL</string>
        <key>CFBundleVersion</key>
        <string>59</string>
        <key>CFBundleShortVersionString</key>
        <string>1.1</string>
        <key>CFBundleIconFile</key>
        <string>$ICON</string>
        <key>CFBundleSignature</key>
        <string>none</string>
</dict>
</plist>
EOF