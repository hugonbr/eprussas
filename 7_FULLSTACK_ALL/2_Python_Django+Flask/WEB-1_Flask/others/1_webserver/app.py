from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')


if __name__ == "__main__":
    app.run()

'''
#Execução direta
python app.py
#Execução via flask
export FLASK_APP=app
export FLASK_ENV=development
flask run
'''
