#@+leo-ver=5-thin
#@+node:peckj.20130301225328.1472: * @file ceekrt/database.py
#@@language python

from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from ceekrt import app

#@+others
#@+node:peckj.20130301225328.1473: ** declarations
engine = create_engine(app.config['DATABASE_URI'], convert_unicode=True)
db_session = scoped_session(sessionmaker(autocommit=False,
                                         autoflush=False,
                                         bind=engine))
Base = declarative_base()
Base.query = db_session.query_property()

#@+node:peckj.20130301225328.1474: ** init_db
def init_db():
  # import all modules here that might define models so that
  # they will be registered properly on the metadata.  Otherwise
  # you will have to import them first before calling init_db()
  import ceekrt.models
  Base.metadata.create_all(bind=engine)
#@-others
#@-leo
