import os
from flask import Flask, render_template, send_file, request, send_from_directory
import requests
from pydantic import BaseModel
from PyPDF2 import PdfReader


app = Flask(__name__)

# For docker jenkin
url = "http://backend:8000"

# # For Mysql
# url = "http://localhost:8000"
#For jenkins

# url = "http://54.196.54.244:8000"

@app.route('/')
def index():
    return render_template("index.html")


@app.route('/index.html')
def index_path():
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
    My_List_2 = []
    folder_path = "./static/document"
    for file in os.listdir(folder_path):
        My_list.append(file)

    folder_path = "./static/document_for_company"
    for file in os.listdir(folder_path):
        My_List_2.append(file)
    return render_template("document.html", my_array=My_list, My_array_2 = My_List_2)


@app.route('/form_input.html')
def form_input():
    return render_template("form_input.html")


if __name__ == '__main__':
    app.run(host="0.0.0.0", port="8081")
