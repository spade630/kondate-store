from sqlalchemy import create_engine, MetaData, Table, Column, Integer, String, Text

engine = create_engine('sqlite:///db.sqlite3', echo=True)
metadata = MetaData()
metadata.bind = engine

menus = Table(
    'menus', metadata,
    Column('id', Integer, primary_key=True),
    Column('name', String, nullable=False, unique=True),
    Column('kcal', Integer, nullable=False),
    Column('image_url', Text)
  )

def create_table():
    metadata.create_all()

def get_index():
    return menus.select().execute().fetchall()

def create_menu(name, kcal):
    menus.insert().execute(name=name, kcal=kcal)



