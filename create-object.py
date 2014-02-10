#!/usr/bin/env python
import sys
import httplib
import json

sys.path.append('/Users/ilja/workspace/libcdmi-python/')

import libcdmi

httplib.HTTPConnection.debuglevel = 1

server = 'http://localhost:8080'

c = libcdmi.open(server, credentials=('john', 'john'))

response = c.create_container('/storage/swift',
                            metadata={
                            'stoxy_backend': 'swift',
                            'stoxy_backend_base': 'swift.example.com/v1/account/container/'
                        })

response = c.create_object('/storage/swift/test-cdmi-file', 'create-object.py',
                            metadata={'event name': 'SNIA SDC 2013',
                                      'event location': 'Santa Clara, CA'})

print json.dumps(response, sort_keys=True,
                indent=4, separators=(',', ': '))

