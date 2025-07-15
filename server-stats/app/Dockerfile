FROM python:3.11-slim

WORKDIR /app

COPY .env /app/.env
COPY app.py /app/app.py
COPY server-stats.sh /app/server-stats.sh
COPY requirements.txt /app/requirements.txt

RUN apt-get update && apt-get install -y bash procps && apt-get clean

RUN pip install --no-cache-dir -r requirements.txt


RUN chmod +x /app/server-stats.sh

WORKDIR /app


CMD ["./server-stats.sh"]
