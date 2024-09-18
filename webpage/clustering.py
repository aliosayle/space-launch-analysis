from fastapi import FastAPI, Form
from fastapi.responses import HTMLResponse
from pydantic import BaseModel
import pandas as pd
import numpy as np
import joblib
from typing import List
from fastapi.staticfiles import StaticFiles
from fastapi.templating import Jinja2Templates
from starlette.requests import Request

app = FastAPI()

# Load the clustering model
pipeline = joblib.load('../clustering_model/clustering_model.pkl')

# Load your data
data = pd.read_csv('data.csv')

@app.get("/", response_class=HTMLResponse)
async def read_root(request: Request):
    return templates.TemplateResponse("index.html", {"request": request})

@app.post("/predict/")
async def predict(
    rocket_status: str = Form(...),
    wind_speed: float = Form(...),
    humidity: float = Form(...),
    temperature: float = Form(...),
    latitude: float = Form(...),
    longitude: float = Form(...),
    organisation: str = Form(...),
    country: str = Form(...),
):
    user_input = pd.DataFrame([{
        'rocket_status': rocket_status,
        'wind_speed': wind_speed,
        'humidity': humidity,
        'temperature': temperature,
        'latitude': latitude,
        'longitude': longitude,
        'organisation': organisation,
        'country': country
    }])
    
    cluster = pipeline.predict(user_input)[0]
    
    data['cluster'] = pipeline.predict(data[['rocket_status', 'wind_speed', 'humidity', 'temperature', 'latitude', 'longitude', 'organisation', 'country']])
    similar_missions = data[data['cluster'] == cluster]

    table_html = similar_missions.to_html(index=False)
    
    return HTMLResponse(content=table_html, status_code=200)

app.mount("/static", StaticFiles(directory="static"), name="static")
templates = Jinja2Templates(directory="templates")
