#!/bin/bash

. _load-token.sh

curl -H "X-Auth-Token:$t" \
     --data-binary @/Users/ilja/Downloads/CentOS-6.4-x86_64-minimal.iso \
     -v -X PUT localhost:8080/storage/larger-file
