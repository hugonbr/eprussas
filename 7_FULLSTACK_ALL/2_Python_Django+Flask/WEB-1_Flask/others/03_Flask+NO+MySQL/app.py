from flask import Flask, render_template, flash, request, redirect, url_for
from forms import LoginForm
from flask_sqlalchemy import SQLAlchemy

# create the object of Flask
app = Flask(__name__)

app.config['SECRET_KEY'] = 'fc5d4435818101d0b00c61292b57f67da37ce75136e69d88'


# SqlAlchemy Database Configuration With Mysql
app.config['SQLALCHEMY_DATABASE_URI'] = "mysql://root:'1234'@localhost/flaskcodeloop"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False


db = SQLAlchemy(app)


# our model
class UserInfo(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(100), unique=True)
    password = db.Column(db.String(100))

    def __init__(self, username, password):
        self.username = username
        self.password = password


# creating our routes
@app.route('/')
def index():

    return render_template('index.html')


# login route
@app.route('/login', methods=['GET', 'POST'])
def Login():
    form = LoginForm()

    if form.validate_on_submit():
        if request.form['username'] != 'admin' or request.form['password'] != '123':
            flash("Invalid Credentials, Please Try Again")

        else:
            return redirect(url_for('index'))

    return render_template('login.html', form=form)


# run flask app
if __name__ == "__main__":
    app.run(debug=True)
