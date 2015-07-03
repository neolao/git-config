#!/bin/bash

echo -n "File: "
read path

echo -n "Reset the file \"$path\"? [y/n] "
read answer

if [[ "$answer" != "y" ]]
then
    exit;
fi

git checkout HEAD -- $name
