FROM python:3.11-slim

EXPOSE 5000

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

CMD ["flask", "--app", "app", "run"]
