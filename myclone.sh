#!/bin/bash

# Script with 3 variable argument, with username required.
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
#####################################################################################
# Comment above all code and Uncomment below to use 2 argument script.
# Tip: Uncomment and Comment using Ctrl+/
#####################################################################################

# # Replace <git-username here> below with git username.
# # For e.g, mine is repo="https://www.github.com/mr-woot/$1.git"
# repo="https://www.github.com/<git-username here>/$1.git"

# folder=$2
# if [ $# -eq 0 ] || [ $# -eq 1 ]; then
#    	echo "Usage: myclone [git-repository name] [output-directory]"
#    	exit 1
# # if [ -z "$1" ] || [ -z "$2" ]; then
# #    	echo "Usage: myclone [git-repository name] [output-directory]"
# #    	exit 1
# else
# 	git clone $repo $folder && rm -rf $folder/.git
# 	echo "Cloning Finished"
# fi
