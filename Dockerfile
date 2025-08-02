FROM python:3.7-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip wheel && \
    pip install --no-cache-dir -r requirements.txt

COPY . .
CMD ["streamlit", "run", "price_app.py", "--server.port", "8000", "--server.address", "0.0.0.0"]
