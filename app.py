# from flask import flask
# app = Flask(__name__)

# @app.route('/')
# def hello_world():
#     return 'Hello, Simple Flask application'
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, Simple Flask application"

if __name__ == "__main__":
    app.run(debug=True)