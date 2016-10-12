#!/bin/bash
repo="https://www.github.com/$1/$2.git"
folder=$3
if [ $# -eq 0 ] || [ $# -eq 1 ] || [ $# -eq 2 ]; then
   	echo "Usage: myclone [git-username] [git-repository name] [output-directory]"
   	exit 1
# if [ -z "$1" ] || [ -z "$2" ]; then
#    	echo "Usage: myclone [git-repository name] [output-directory]"
#    	exit 1
else
	git clone $repo $folder && rm -rf $folder/.git
	echo "Cloning Finished"
fi
