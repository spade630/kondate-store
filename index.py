from bottle import route, run, template, redirect, post, request
import db
import itertools
import math

@route('/')
def index():
    data = db.get_index()
    menus = [[] for i in range(math.ceil(len(data) / 3))]
    for i, v in enumerate(data):
        menus[i // 3].append(v)
    return template('title.tpl', menus=menus)

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

