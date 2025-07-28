FROM python:3.11-slim

RUN apt-get update && \
    apt-get install -y nmap && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy all files
COPY . .

RUN pip install --no-cache-dir flask

EXPOSE 8080

CMD ["python", "app.py"]
