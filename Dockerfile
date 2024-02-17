from python:3.7-slim-buster
WORKDIR /app
COPY . /app/
run apt update -y && apt install awscli -y

run pip install -r requirements.txt
CMD ["python3", "app.py"]