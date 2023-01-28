FROM python:3.11-slim

RUN pip install flask
WORKDIR /app
#COPY --chown=user:group
COPY app.py .

CMD [ "flask", "--app", "app", "run", "--host=0.0.0.0" ]
