#!/bin/bash

echo -n "Branch name: "
read name

echo -n "Create the branch \"$name\"? [y/n] "
read answer

if [[ "$answer" != "y" ]]
then
    exit;
fi


git push origin origin:refs/heads/$name
git checkout $name
