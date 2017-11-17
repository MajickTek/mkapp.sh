# mkapp.sh
A simple shell script written in bash for macOS/X which builds Mac .app bundles.

Usage: (from mkapp.sh)
./mkapp.sh exe
Where exe is the executable that you want to bundle.
An info.plist is automatically generated for you.
An icon is not provided. 

Generally, the icon should be in ICNS format. However, other formats are supported by the system.

To test out the app, you can run the script file on itself by typing:
./mkapp.sh mkapp.sh
This is how I tested if this works. And it does.

## extra stuff:
The PLIST looks like the following:
~~~~
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist SYSTEM "file://localhost/System/Library/DTDs/PropertyList.dtd">
<plist version="1.0">
<dict>
        <key>CFBundleExecutable</key>
        <string>executable name</string>
        <key>CFBundleName</key>
        <string>APP file name</string>
        <key>CFBundlePackageType</key>
        <string>APPL</string>
        <key>CFBundleVersion</key>
        <string>59</string>
        <key>CFBundleShortVersionString</key>
        <string>1.1</string>
        <key>CFBundleIconFile</key>
        <string>icon file name</string>
        <key>CFBundleSignature</key>
        <string>none</string>
</dict>
</plist>
~~~~
