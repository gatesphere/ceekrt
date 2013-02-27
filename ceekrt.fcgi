#!/usr/bin/python
#@+leo-ver=5-thin
#@+node:peckj.20130227152029.1391: * @file ceekrt.fcgi
#@@first
#@@language python

''' this file acts as an fcgi interface between flask and lighttpd '''

from flup.server.fcgi import WSGIServer
from werkzeug.contrib.fixers import LighttpdCGIRootFix
from ceekrt import app

sock = '/tmp/ceekrt-test.sock-0'

if __name__ == '__main__':
  app.wsgi_app = LighttpdCGIRootFix(app.wsgi_app)
  WSGIServer(app, bindAddress=sock).run()

#@-leo
