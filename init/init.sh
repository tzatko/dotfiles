#!/bin/bash

~/init/install-janus.sh

pip install --user powerline-status

if [ $(uname) == "Darwin" ];then
		~/init/macos
		~/init/brew.sh
		~/init/brew-cask.sh
	fi
