#@+leo-ver=5-thin
#@+node:peckj.20130301225328.1475: * @file ceekrt/models.py
#@@language python

from sqlalchemy import Column, Integer, String
from ceekrt.database import Base

#@+others
#@+node:peckj.20130301225328.1476: ** secret model
class Secret(Base):
  __tablename__ = 'secrets'
  id = Column(Integer, primary_key=True)
  secret = Column(String(140), unique=False)
  metoos = Column(Integer, unique=False)
  reported = Column(Integer, unique=False)
  
  def __init__(self, secret=None, metoos=0, reported=0):
    self.secret = secret
    self.metoos = metoos
    self.reported = reported

  def __repr__(self):
    return '<secret %r>' % (self.secret)
    
  def validate(self):
    return 0 < len(self.secret) <= 140
    
  def people(self):
    return ("people share", "person shares")[self.metoos == 1]
#@-others
#@-leo
