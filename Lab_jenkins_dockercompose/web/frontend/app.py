import os
from flask import Flask, render_template, send_file, request
import cv2
import requests
import base64
from fastapi import FastAPI
from pydantic import BaseModel
import matplotlib.pyplot as plt
import numpy as np
import cv2
import json
from PyPDF2 import PdfReader


app = Flask(__name__)

url = "http://localhost:8000"

@app.route('/document.html')
def document():
    My_list = []
    folder_path = "./document"
    for file in os.listdir(folder_path):
        pdf_path = os.path.join(folder_path, file)
        payload = {
            "file_name": file,
            "file_path": pdf_path,
        }
        response = requests.post(f"{url}/process-file", json=payload)

        data = json.loads(response.content)
        processed_file_string = data["file_name"]
        processed_file_path_string = data["file_path"]
        My_list.append([processed_file_string,  processed_file_path_string])

    return render_template("document.html", my_array=My_list)
              

@app.route('/download')
def download_file():
    filename = request.args.get('filename')
    return send_file(filename, as_attachment=True)

@app.route('/index.html')
def index():
    return render_template("index.html")

if __name__ == '__main__':
    app.run(host="0.0.0.0",port="8081")
    