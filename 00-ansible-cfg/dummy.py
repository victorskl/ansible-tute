#!/usr/bin/env python

from time import sleep
import platform

# dummy batch job simulation in python
# it runs for 30 seconds, print hostname and countdown

for count in range(30, 0, -1):
  print("%s: %s" % (platform.node(), count))
  sleep(1)
