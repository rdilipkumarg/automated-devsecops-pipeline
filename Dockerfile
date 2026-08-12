FROM python:3.13-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt \
    && pip install --no-cache-dir --upgrade msgpack setuptools
    
COPY app ./app

EXPOSE 5001

CMD ["python", "app/app.py"]