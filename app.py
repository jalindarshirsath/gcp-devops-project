from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, Simple Flask application"

if __name__ == "__main__":
    app.run(debug=True)
    # Note: Flask's default port is 5000
    # This will read the PORT environment variable
    port = int(os.environ.get('PORT', 8080))  # Default to 8080 if PORT isn't set
    app.run(host='0.0.0.0', port=port)