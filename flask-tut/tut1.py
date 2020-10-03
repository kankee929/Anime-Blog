'''
from flask import Flask,render_template
app = Flask(__name__)

@app.route('/')
def hello():
    return render_template('index.html')

@app.route('/about')
def about():
    name="Ankit"
    return render_template('about.html', name1=name)


@app.route('/bootstrap')
def bootstrap():
    return render_template('bootstrap.html')


def hello_world():
    return 'Hello, World!'


app.run(debug=True)
'''