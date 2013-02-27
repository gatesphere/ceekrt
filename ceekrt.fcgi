#!/usr/bin/python
from flup.server.fcgi import WSGIServer
from werkzeug.contrib.fixers import LighttpdCGIRootFix
from ceekrt import app

sock = '/tmp/ceekrt-test.sock-0'

if __name__ == '__main__':
  a = LighttpdCGIRootFix(app)
  WSGIServer(a, bindAddress=sock).run()

