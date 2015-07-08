#!/bin/bash

echo -n "Branch name: "
read name

echo -n "Based on branch: "
read base

echo -n "Create the branch \"$name\" based on \"$base\"? [y/n] "
read answer

if [[ "$answer" != "y" ]]
then
    exit;
fi

git branch $name $base
git checkout $name
git push
