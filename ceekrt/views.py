#@+leo-ver=5-thin
#@+node:peckj.20130227152029.1396: * @file ceekrt/views.py
#@@language python

from ceekrt import app
from flask import render_template, request, flash, redirect, url_for
from ceekrt.database import db_session
from ceekrt.models import Secret

#@+others
#@+node:peckj.20130228101737.1720: ** index
# main page
@app.route('/')
def index():
  import random
  secrets = set(Secret.query.all())
  if len(secrets) > app.config['SECRETS_PER_PAGE']:
    secrets = random.sample(secrets, app.config['SECRETS_PER_PAGE'])
  return render_template('index.html', secrets=secrets)
#@+node:peckj.20130228101737.1721: ** share
# sharing a secret
@app.route('/share', methods=['GET', 'POST'])
def share():
  if request.method == 'GET':
    # show form
    return render_template('share.html')
  elif request.method == 'POST':
    # act on submission
    s_con = request.form['secret_content']
    honeypot = request.form['website']
    if len(honeypot) != 0:
      # spammer!  Fake success...
      flash('Post submitted.', 'success')
      return redirect(url_for('index'))
    s = Secret(s_con)
    if s.validate():
      db_session.add(s)
      db_session.commit()
      flash('Post submitted.', 'success')
      return redirect(url_for('index'))
    else:
      flash('Secret of incorrect length! Try again.', 'error')
      return redirect(url_for('share'))
#@+node:peckj.20130228101737.1722: ** static pages
# static pages
@app.route('/about')
def about():
  return render_template('about.html')
  
@app.route('/help')
def help():
  return render_template('help.html')
  
@app.route('/privacy')
def privacy():
  return render_template('privacy.html')
#@-others

#@-leo
