#! /bin/bash
# This script installs the scss skeleton into the directory of your choice.
# And then removes your installed version giving you a fresh scss and css
# directory to start working with

echo ""
echo "This script will create and mv the directories to the proper place"
echo ""

# Set the directory for safety
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm -rf $DIR/tmp

mkdir $DIR/tmp

cp -r $DIR/scss $DIR/tmp
cp -r $DIR/css $DIR/tmp
cp $DIR/Gemfile $DIR/tmp
cp $DIR/config.rb $DIR/tmp

# Prompt for a path of customization
PATHTOTHEME="theme"
read -p "Enter the location for the files: [$PATHTOTHEME] " PATHTOTHEMER
PATHTOTHEMEU=${PATHTOTHEMER:-$PATHTOTHEME}

# Copy all the files from the tmp file to the project
cp -r $DIR/tmp/* $PATHTOTHEMEU


# After that cp all the files into the correct place.

echo "Thank you running this install script"