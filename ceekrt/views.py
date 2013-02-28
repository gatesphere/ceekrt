#@+leo-ver=5-thin
#@+node:peckj.20130227152029.1396: * @file views.py
from ceekrt import app
from flask import render_template

@app.route('/')
def index():
  return render_template('index.html')
#@-leo
