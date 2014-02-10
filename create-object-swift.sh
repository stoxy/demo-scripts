#!/bin/bash

. _load-token.sh

curl -H "X-Auth-Token:$t" \
     --data-binary @/Users/ilja/Downloads/0_Readme \
     -v -X PUT localhost:8080/storage/larger-file
