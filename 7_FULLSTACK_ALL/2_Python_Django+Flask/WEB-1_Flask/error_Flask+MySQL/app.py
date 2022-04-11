# app.py
from flask import Flask, render_template, request, redirect, url_for, flash
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.secret_key = "35dd17731e5175cb9b36701505502e599150feb50067d7a2"

# SqlAlchemy Database Configuration With Mysql
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:''@localhost/testingdb'
# mysql+pymysql://username:passwd@host/databasename
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

# Creating model table for our CRUD database


class Employee(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100))
    email = db.Column(db.String(100))
    phone = db.Column(db.String(100))

    def __init__(self, name, email, phone):
        self.name = name
        self.email = email
        self.phone = phone

# query on all our employee data


@app.route('/')
def Index():
    all_data = Employee.query.all()
    return render_template("index.html", employees=all_data)

# insert data to mysql database via html forms


@app.route('/insert', methods=['POST'])
def insert():
    if request.method == 'POST':
        name = request.form['name']
        email = request.form['email']
        phone = request.form['phone']

        my_data = Employee(name, email, phone)
        db.session.add(my_data)
        db.session.commit()

        flash("Employee Inserted Successfully")
        return redirect(url_for('Index'))

# update employee


@app.route('/update', methods=['GET', 'POST'])
def update():
    if request.method == 'POST':
        my_data = Employee.query.get(request.form.get('id'))

        my_data.name = request.form['name']
        my_data.email = request.form['email']
        my_data.phone = request.form['phone']

        db.session.commit()
        flash("Employee Updated Successfully")
        return redirect(url_for('Index'))

# delete employee


@app.route('/delete/<id>/', methods=['GET', 'POST'])
def delete(id):
    my_data = Employee.query.get(id)
    db.session.delete(my_data)
    db.session.commit()
    flash("Employee Deleted Successfully")
    return redirect(url_for('Index'))


if __name__ == "__main__":
    app.run(debug=True)
