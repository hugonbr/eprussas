from flask import Flask, render_template, request

app = Flask(__name__)


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/login')
def login():
    return render_template('login.html')


@app.route('/sys')
def sys():
    login = request.args.get("login", "null")
    return render_template('sys.html', login=login)


app.run(host='localhost', port=7000)
