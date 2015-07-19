from bottle import route, run, template
import db

@route('/')
def index():
    return template('title.tpl', menus=db.get_index())

run(host="localhost", port=8080)

