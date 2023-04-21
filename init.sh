#!/bin/bash

while true; do
    read -p "WARNING: This will overwrite your local wsprd direction. Do you want to continue? " yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Build wsjtx and copy out the wsprd source
docker build -t wsjtx .
id=$(docker create wsjtx)
docker cp $id:/build/wsjtx-prefix/src/wsjtx/lib/wsprd .
docker rm -v $id
cp sample.wav wsprd/
