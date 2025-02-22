from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def hello():
    return render_template('index.html')

if __name__ == '__main__':
    # Run the app on all available network interfaces, listening on port 8080
    app.run(host='0.0.0.0', port=8080)
