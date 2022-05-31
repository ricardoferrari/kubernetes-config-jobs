#!/bin/bash

# Get the options
while getopts ":hv:" option; do
   case $option in
        h) # display Help
            exit;;
        v) # Enter a name
            version=$OPTARG;;
        \?) # Invalid option
            echo "Error: Invalid option"
            exit;;
   esac
done

build="docker build -t data-mover:${version} ."
tag="docker tag data-mover:${version} ricardoferrari/data-mover:${version}"
push="docker push ricardoferrari/data-mover:${version}"

docker login
$build
$tag
$push

echo "Pushed version ${version}"