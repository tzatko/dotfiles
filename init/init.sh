#!/bin/bash

~/init/install-janus.sh

if [ $(uname) == "Darwin" ];then
		~/init/osx
		~/init/brew.sh
		~/init/brew-cask.sh
	fi
