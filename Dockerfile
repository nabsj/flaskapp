# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
#requitrments에 필요한 라이브러리를 명세한다.

COPY . .
#app 이라는 워크디렉토리에 실행하기 위해 카피한다. 

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
