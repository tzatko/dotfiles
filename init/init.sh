#!/bin/bash

~/init/install-janus.sh

pip install --user powerline-status
pip install segno # for QR codes using qr function

if [ $(uname) == "Darwin" ];then
		~/init/macos
		~/init/brew.sh
		~/init/brew-cask.sh
    ~/init/macos-notifications
	fi
