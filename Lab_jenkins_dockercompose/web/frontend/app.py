import os
from flask import Flask, render_template, send_file
import cv2
import requests
import base64
from fastapi import FastAPI
from pydantic import BaseModel
import matplotlib.pyplot as plt
import numpy as np
import cv2
import json


app = Flask(__name__)

url = "http://localhost:8000"

@app.route('/')
def index():
    pdf_file_path = 'Coop101.pdf'

    pdf_file_name = os.path.basename(pdf_file_path)
    pdf_file_full_path = os.path.abspath(pdf_file_path)
    payload = {
        "file_name": pdf_file_name,
        "file_path": pdf_file_full_path,
    }
    response = requests.post(f"{url}/process-file", json=payload)

    data = json.loads(response.content)

    processed_image_string = data["file_name"]
    return render_template("document.html", mycontent= processed_image_string)

@app.route('/download')
def download_file():
    pdf_file_path = 'Coop101.pdf'
    path= os.path.abspath(pdf_file_path)
    return send_file(path, as_attachment=True)

if __name__ == '__main__':
    app.run(host="0.0.0.0",port="8081")
    