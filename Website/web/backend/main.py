import uvicorn
import os
import mysql.connector
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
from flask import Flask, render_template, send_file, request, send_from_directory
import psycopg2


app = FastAPI()


origins = [
    "http://localhost:8080",
    "http://localhost:8000",
    "http://localhost:8081",
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

# Set database



@app.get('/getfrom')
async def getfrom():
    cnx =  psycopg2.connect( host="db",
        database="myapp",
        user="postgres",
        password="postgres")


    cursor = cnx.cursor()
    cursor.execute("SELECT * FROM form")
    try:
        # Fetch the results into a Python variable
        results = cursor.fetchall()
        result_list = []
        for row in results:
            result = {
                "id": row[0],
                "title": row[1],
                "no_faculty": row[2]
            }
            result_list.append(result)
        return result_list
    except (Exception, mysql.connector.DatabaseError):
        return False
    finally:
        cursor.close()
        cnx.close()
