#!/bin/sh -xve

# Trigger the pspp travis builds

# Copyright (C) 2020 Free Software Foundation, Inc.
# Released under GNU General Public License, either version 3
# or any later option

body='{
"request": {
"branch":"master"
}}'

curl -s -X POST \
   -H "Content-Type: application/json" \
   -H "Accept: application/json" \
   -H "Travis-API-Version: 3" \
   -H "Authorization: token XXXXXXXX" \
   -d "$body" \
   https://api.travis-ci.org/repo/fredowski%2Fosxbundler/requests
