#!/bin/bash

echo "Enter the path of the source folder"

read source_folder

if [ ! -d "$source_folder" ]; then
	  echo "*****************************Source_Folder directory does not exits"
	    exit 1
fi

echo "Enter the path of the destination folder"

read destination_folder

if [ ! -d "$destination_folder" ]; then
	  echo "*************************Destination_folder does not exits. Creating  new folder"
	    mkdir "$destination_folder"
fi
cp -r "$source_folder"/* "$destination_folder"
