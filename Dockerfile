FROM python:3-alpine
COPY app.py /
env FLASK_APP=app.py
RUN pip install --no-cache-dir -U Flask
CMD ["flask","run","--host","0.0.0.0"]
