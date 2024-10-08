#!/usr/local/bin/python3

import os
from flask import Flask

app = Flask(__name__)
#podname = os.uname()[1]

podname = os.environ.get('POD_NAME');
nodename = os.environ.get('NODE_NAME');
namespace = os.environ.get('POD_NAMESPACE');


@app.route("/")
def index():
    return " Container EDU | POD Working : " + podname + " , "  | nodename : " +  nodename +  " | namespace : " +  namespace + "\n"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port="5000")
