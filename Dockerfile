FROM python:3.8-slim-buster

RUN useradd habi

WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt

RUN rm /app/requirements.txt

COPY main.py    ./main.py
COPY entry.sh    ./entry.sh


USER habi

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]


#ENTRYPOINT ./entry.sh
