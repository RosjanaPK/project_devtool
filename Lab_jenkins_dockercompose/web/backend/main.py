import uvicorn
import os
import numpy as np
import cv2
import base64
from typing import List
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
from flask import Flask, render_template, send_file, request, send_from_directory


app = FastAPI()




origins = [
    "http://localhost:8080",
    "http://localhost:8000",
    "http://localhost:3000",
    "https://stackpython.co"
   
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)



class FileRequest(BaseModel):
    file_name: str




@app.post("/process-file")
async def process_file(file_request: FileRequest):

    return {"file_name": file_request.file_name,

            }

