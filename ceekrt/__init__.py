#@+leo-ver=5-thin
#@+node:peckj.20130227152029.1392: * @file ceekrt/__init__.py
#@@language python
#@@tabwidth -2

#@+others
#@+node:peckj.20130227152029.1393: ** __init__ declarations
from flask import Flask
app = Flask(__name__, instance_relative_config=True)
app.config.from_pyfile('application.cfg')

import ceekrt.views
#@-others

#@-leo
