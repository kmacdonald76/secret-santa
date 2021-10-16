FROM python:3

RUN pip install pyyaml
RUN pip install pytz

WORKDIR /app

COPY . .

CMD ["python3", "secret_santa.py"]
