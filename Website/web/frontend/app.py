import os
from flask import Flask, render_template, send_file, request, send_from_directory
import requests
from pydantic import BaseModel
from PyPDF2 import PdfReader


app = Flask(__name__)

# For docker
# url = "http://backend:8000"

# For Mysql
url = "http://localhost:8000"

@app.route('/index.html')
def index():
    return render_template("index.html")


@app.route('/detail.html')
def detail():
    response = requests.get(url+'/getdetail')
    data = response.json()
    return render_template("detail.html", mycontent=data)


@app.route('/form.html')
def form():
    response = requests.get(url+'/getfrom')
    data = response.json()
    return render_template("form.html", mycontent=data)



@app.route('/news.html')
def news():
    return render_template("news.html")


@app.route('/document.html')
def document():
    My_list = []
    folder_path = "./static/document"
    for file in os.listdir(folder_path):
        My_list.append(file)
    return render_template("document.html", my_array=My_list)


@app.route('/form_input.html')
def form_input():
    return render_template("form_input.html")


if __name__ == '__main__':
    app.run(host="0.0.0.0", port="8081")
