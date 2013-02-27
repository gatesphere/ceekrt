#@+leo-ver=5-thin
#@+node:peckj.20130227152029.1396: * @file views.py
from ceekrt import app

@app.route('/')
def index():
  return 'Hello World!'
#@-leo
