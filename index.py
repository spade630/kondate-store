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
    image_url = request.forms.image_url
    db.create_menu(name, kcal, image_url)
    redirect('/')

run(host="localhost", port=8080)

