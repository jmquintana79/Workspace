#!/bin/bash

# ask for a project name
read -p "Enter Project Name to be removed: "  name

# create data and project folder from my templates
rm -rf $PWD'/projects/'$name
rm -rf $PWD'/data/projects/'$name

