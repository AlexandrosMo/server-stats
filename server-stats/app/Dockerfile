FROM python:3.11-slim

WORKDIR /app

COPY .env /app/.env
COPY app.py /app/app.py
COPY server-stats.sh /app/server-stats.sh

RUN apt-get update && apt-get install -y bash procps && apt-get clean

CMD ["python", "app.py"]
