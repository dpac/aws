#!/bin/bash
yum update -y
yum install python34 python34-pip
cat <<EOF >> requirements.txt
aws-cfn-bootstrap==2.0
click==7.1.2
docutils==0.14
Flask==1.1.2
itsdangerous==1.1.0
Jinja2==2.11.3
lockfile==0.11.0
MarkupSafe==1.1.1
pystache==0.5.4
python-daemon==2.2.3
simplejson==3.2.0
Werkzeug==1.0.1
EOF
pip3 install -r requirements.txt 
cat <<EOF >> web-print.py
from flask import Flask, render_template
app = Flask(__name__)
import os

@app.route("/")
def hello():
    ip=ip=os.popen('ifconfig').read()
    hostname=os.popen('curl -s http://169.254.169.254/latest/meta-data/instance-id').read()
    return hostname + " " +  ip.split()[5] 

if __name__ == "__main__":
	app.run(host='0.0.0.0',port="80")
EOF
python3 web-print.py
