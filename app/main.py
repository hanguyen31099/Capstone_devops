from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    print(a)
    return "<h1 style='text-align: center;'>Hello World!</h1>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3000, debug=True)