from flask import Flask, render_template, request

app = Flask(__name__)


@app.route('/')
def index():
    name = request.args.get("name", "mundo")
    return render_template('index.html', name=name)


app.run(host='localhost', port=7000)

# http://localhost:7000/?name=Hugo+Nathan

