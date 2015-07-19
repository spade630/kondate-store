from bottle import route, run, template, redirect, post, request
import db

@route('/')
def index():
    return template('title.tpl', menus=db.get_index())

@route('/new')
def new_menu():
    return template('new.tpl')

@post('/new')
def add_menu():
    name = request.forms.name
    kcal = int(request.forms.kcal)

    db.create_menu(name, kcal)
    redirect('/')

run(host="localhost", port=8080)

