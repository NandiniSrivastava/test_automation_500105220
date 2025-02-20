FROM ubuntu

RUN apt update -y
RUN apt install python3 python3-pip pipenv -y

WORKDIR /app
COPY . /app/
RUN pipenv install -r requirements.txt

EXPOSE 80


CMD pipenv run python3 https://upessocs.github.io/Lectures/DevOps%20CCVT/Unit%202/main.py