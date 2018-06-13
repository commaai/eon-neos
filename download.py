#!/usr/bin/env python
import os
import json

up = json.load(open("update.json"))
os.system("curl -O %s" % up['recovery_url'])
os.system("curl -O %s" % up['ota_url'])

