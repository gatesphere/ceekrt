#@+leo-ver=5-thin
#@+node:peckj.20130227152029.1392: * @file ceekrt/__init__.py
#@@language python

from flask import Flask
app = Flask(__name__, instance_relative_config=True)
app.config.from_pyfile('application.cfg')
app.secret_key = app.config['SECRET_KEY']

import ceekrt.views

from ceekrt.database import db_session
@app.teardown_request
def shutdown_session(exception=None):
    db_session.remove()


#@-leo
