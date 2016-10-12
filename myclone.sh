#!/bin/bash
repo="https://www.github.com/mr-woot/$1.git"
folder=$2
if [ $# -eq 0 ] || [ $# -eq 1 ]; then
   	echo "Usage: myclone [git-repository name] [output-directory]"
   	exit 1
# if [ -z "$1" ] || [ -z "$2" ]; then
#    	echo "Usage: myclone [git-repository name] [output-directory]"
#    	exit 1
else
	git clone $repo $folder && rm -rf $folder/.git
	echo "Cloning Finished"
fi