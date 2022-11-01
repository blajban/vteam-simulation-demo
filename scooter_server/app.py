#!user/bin/env python3

from flask import Flask, request
import datetime

app = Flask(__name__)

def log(req):
    msg = str(datetime.datetime.now()) + " -- " + str(req)[1:len(str(req)) - 1] + "<br>" + "\n"
    with open('log.txt', 'a') as file:
        file.write(msg)

def get_log():
    with open('log.txt', 'r') as file:
        data = file.read()
    return data

#
# Server takes request and writes it to a log. Update now and then and
# you will see it fill with requests from the scooters
#

@app.route('/')
def routes():
    log(request)
    return get_log()


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0")
