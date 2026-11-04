FROM python:3-alpine
COPY app.py /
ENV FLASK_APP=app.py
RUN pip install --no-cache-dir -U Flask
EXPOSE 5002
CMD ["flask","run","--host","0.0.0.0","--port","5002"]
