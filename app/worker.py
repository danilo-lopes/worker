from flask import Flask


app = Flask(__name__)

from api.api import *

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80, debug=True)
