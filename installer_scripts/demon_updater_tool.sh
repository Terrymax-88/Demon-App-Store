#!/usr/bin/env bash
# 2020 Demon App Store
# WeakNet Labs
#
# Installer script, should be called from the workflow app
# INSTALL:
# --------------------
# Ghidra NSA Reverse Engineering Tool
# --------------------
# NOTES:
#
#
export DAS_CONFIG=./das_config.txt # This is REQUIRED
##### ##### ##### ##### #####
##### Demon App Store Variables:
# Example of pulling variable from das_config:
# $(cat $DAS_CONFIG|grep DAS_APPCACHE|sed -r 's/[^=]+=//')
LOCALAREA=/var/demon/updater/code/Demon-Update-Tool
rm -rf /var/demon/updater # this is okay, since we are "installing" the app.
mkdir -p /var/demon/updater/code
cd /var/demon/updater/code && git clone https://github.com/weaknetlabs/Demon-Update-Tool.git
cp ${LOCALAREA}/demon-updater.sh /usr/local/sbin/
cp ${LOCALAREA}/demon-updater-workflow.sh /usr/local/sbin/
chmod +x /usr/local/sbin/demon-updater* # make them executable
cp ${LOCALAREA}/demon-updater.desktop ${LOCAL_APPS} # copy the menu icon in
cp ${LOCALAREA}/images/updater.png /usr/share/demon/images/icons/ # copy in our new icon