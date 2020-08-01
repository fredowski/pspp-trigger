#!/bin/sh -xve

# mirror pspp from savannah to github

# assume savannah to be the origin and github is github repo

# Copyright (C) 2020 Free Software Foundation, Inc.
# Released under GNU General Public License, either version 3
# or any later option

psppdir=$HOME/pspp 

if ! test -d $psppdir; then
    echo "pspp dir $psppdir is missing - exiting"
    exit
fi

cd $psppdir
git checkout master
git pull
git checkout travis
git rebase master
git push github

