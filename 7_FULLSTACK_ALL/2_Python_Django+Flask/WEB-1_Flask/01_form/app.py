from flask import Flask, render_template, request, url_for, flash, redirect

app = Flask(__name__)

app.config['SECRET_KEY'] = '0c69dea4f2466a82d1652ca19369364e38e0acea0b01c007'

messages = [{'title': 'Message One',
             'content': 'Message One Content'},
            {'title': 'Message Two',
             'content': 'Message Two Content'}
            ]


@app.route('/')
def index():
    return render_template('index.html', messages=messages)

@app.route('/create/', methods=('GET', 'POST'))
def create():
    if request.method == 'POST':
        title = request.form['title']
        content = request.form['content']

        if not title:
            flash('Title is required!')
        elif not content:
            flash('Content is required!')
        else:
            messages.append({'title': title, 'content': content})
            return redirect(url_for('index'))
    
    return render_template('create.html')

app.run(host='localhost', port=7000)
