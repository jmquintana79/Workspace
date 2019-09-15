#!/bin/bash

# create main data and project folders (if not exists)
mkdir -p $PWD'/data/projects'
mkdir -p $PWD'/projects'

# ask for a project name 
read -p "Enter Your Project Name: "  name

# create data and project folder from my templates
cp -R $PWD'/.templates/project' $PWD'/projects/'$name
cp -R $PWD'/.templates/data' $PWD'/data/projects/'$name

# include data paths in the config.yml file
echo "path:" >> $PWD'/projects/'$name'/config.yml'
echo " project: '$PWD/projects/$name'" >> $PWD'/projects/'$name'/config.yml'
echo " data: '$PWD/data/projects/$name'" >> $PWD'/projects/'$name/config.yml
 
# remove empty files
rm -rf $PWD'/projects/'$name'/scripts/dev/empty.py'
rm -rf $PWD'/projects/'$name'/scripts/oper/empty.py'
rm -rf $PWD'/projects/'$name'/scripts/utils/empty.py'
rm -rf $PWD'/data/projects/'$name'/external/empty.csv'
rm -rf $PWD'/data/projects/'$name'/figures/empty.txt'
rm -rf $PWD'/data/projects/'$name'/intermediate/empty.csv'
rm -rf $PWD'/data/projects/'$name'/processed/empty.csv'
rm -rf $PWD'/data/projects/'$name'/raw/empty.csv'
rm -rf $PWD'/data/projects/'$name'/results/empty.csv'
