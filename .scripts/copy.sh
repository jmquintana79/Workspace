#!/bin/bash

# ask for a project name
read -p "Enter Project to be copied: "  name
read -p "Enter Localtion where copy the project: "  location

# if not exits the location, create it
mkdir -p $location'/project'
mkdir -p $location'/data'

# copy
cp -R $PWD'/projects/'$name $location'/project/'
cp -R $PWD'/data/projects/'$name $location'/data/'

