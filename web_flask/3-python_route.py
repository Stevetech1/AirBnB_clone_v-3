#!/usr/bin/python3
# script that starts a Flask web application

from flask import Flask
app = Flask(__name__)

@app.route('/', strict_slashes=False)
def hello_HBNB():
    return "Hello HBNB!"

@app.route('/hbnb', strict_slashes=False)
def HBNB():
    return 'HBNB'

@app.route('/c/<text>', strict_slashes=False)
def c(text):
    return 'C %s' % text.replace('_', ' ')

@app.route('/python', strict_slashes=False)
def python_defaultmsg():
    return 'Python is cool'

@app.route('/python/<text>', strict_slashes=False)
def python_text(text):
    return 'Python %s' % text.replace('_', ' ')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
