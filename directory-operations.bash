#!/bin/bash

# creating a directory...
echo "Enter the name of directory which is to be created:"
read directory_name
mkdir $directory_name


# first check if the directory exist or not, then create it...
echo "Create another diretory, enter the name:"
read d2
if [ -d "$d2" ] # -d command return true if the directory name provided exists.
then 
 echo "Directory exists."
else 
 mkdir $d2
fi

# deleting a file...
echo "Enter file name to remove:"
read file_name
rm -i $file_name # -i option will prompt the user for the deletion's permission.
echo "Enter file directory name to remove:"
read direc_name
rm -r $direc_name # -r opetion with rm command is used to remove directories...
