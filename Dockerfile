FROM python:3.10
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app
EXPOSE 8000
CMD ["sh", "-c", "pytest --cov=main --cov-report=term -v && uvicorn main:app --host 0.0.0.0 --port 8000"]
