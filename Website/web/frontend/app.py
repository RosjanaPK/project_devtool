import os
from flask import Flask, render_template, send_file, request, send_from_directory
import requests
from pydantic import BaseModel
import matplotlib.pyplot as plt
import numpy as np
import cv2
import json
from PyPDF2 import PdfReader
import mysql.connector


app = Flask(__name__)

url = "http://localhost:8000"

connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="159PooK159.",
    database="project_devtool"
)

db_lecturers = connection.cursor()

db_lecturers.execute("SELECT * FROM lecturers")

lecturers = db_lecturers.fetchall()

# for data in lecturers:
#   print(data)

@app.route('/index.html')
def index():
    return render_template("index.html")


@app.route('/detail.html')
def detail():
    return render_template("detail.html", list_lecturers=lecturers)

# @app.route('/images/lecturers')
# def img_lecturers():
#     img = os.listdir(os.path.join(app.static_folder, "lecturers"))
#     print("-"+img)
#     return render_template('detail.html', list_img=img)

@app.route('/form.html')
def form():
    response = requests.post(url+'/getfrom')
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


if __name__ == '__main__':
    app.run(host="0.0.0.0", port="8081")
