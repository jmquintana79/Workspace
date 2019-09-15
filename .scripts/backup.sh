#!/bin/bash

# ask for a project name
read -p "Enter Project to be stored: "  name
read -p "Enter Localtion where copy the zipped project: "  location

# if not exits the location, create it
mkdir -p $location

# copy
cp -R $PWD'/projects/'$name $location'/'

# zip
cd $location
zip -r -m $name'.zip' $name

