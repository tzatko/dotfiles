#!/bin/bash

~/init/install-janus.sh

if [ $(uname) == "Darwin" ];then
		~/init/macos
		~/init/brew.sh
		~/init/brew-cask.sh
	fi
