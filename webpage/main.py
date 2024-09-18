from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from fastapi.middleware.cors import CORSMiddleware
import pandas as pd
import numpy as np
from joblib import load

app = FastAPI()

# Add CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Allows all origins
    allow_credentials=True,
    allow_methods=["*"],  # Allows all methods
    allow_headers=["*"],  # Allows all headers
)

# Load the model, label encoders, and scaler
model = load('../models/random_forest_model.joblib')
label_encoders = {
    'rocket_status': load('../models/label_encoder_rocket_status.joblib'),
    'location': load('../models/label_encoder_location.joblib'),
    'organisation': load('../models/label_encoder_organisation.joblib'),
    'country': load('../models/label_encoder_country.joblib')
}
scaler = load('../models/scaler.joblib')

# Define the request body model
class MissionData(BaseModel):
    rocket_status: str
    mission_status: int
    wind_speed: float
    humidity: float
    temperature: float
    location: str
    latitude: float
    longitude: float
    country_id: int
    organisation: str
    isprivate: int
    country: str

# Function to encode categorical columns
def encode_categorical_columns(df: pd.DataFrame, label_encoders: dict) -> pd.DataFrame:
    for col, le in label_encoders.items():
        if df[col].isin(le.classes_).all():
            df[col] = le.transform(df[col])
        else:
            df[col] = df[col].apply(lambda x: le.transform([x])[0] if x in le.classes_ else le.transform([le.classes_[0]])[0])
    return df

@app.post("/predict/")
def predict(data: MissionData):
    # Convert incoming data to DataFrame
    new_data = pd.DataFrame([data.dict()])

    # Encode categorical columns
    new_data = encode_categorical_columns(new_data, label_encoders)

    # Scale numerical features
    new_data[['wind_speed', 'humidity', 'temperature', 'latitude', 'longitude']] = scaler.transform(
        new_data[['wind_speed', 'humidity', 'temperature', 'latitude', 'longitude']])

    # Make prediction
    try:
        predictions = model.predict(new_data)
        predictions_exp = np.expm1(predictions)
        return {"predicted_price": float(predictions_exp[0])}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000, reload=True)
