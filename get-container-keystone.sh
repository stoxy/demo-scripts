#!/bin/bash
_load_token.sh

curl -H "X-Auth-Token:$t" \
     -H "Content-Type: application/cdmi-container" \
     -H "Accept: application/cdmi-container" \
     -H "X-CDMI-Specification-Version: 1.0.2" \
     -v localhost:8080/storage/$1
