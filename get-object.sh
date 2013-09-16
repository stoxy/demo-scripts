curl -u john:john \
     -H "Content-Type: application/cdmi-object" \
     -H "Accept: application/cdmi-object" \
     -H "X-CDMI-Specification-Version: 1.0.2" \
     -v localhost:8080/storage/$1
