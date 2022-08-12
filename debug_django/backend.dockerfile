FROM python:3.8-slim-buster

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /backend

# RUN apt-get update \
#     && apt-get -y install libpq-dev gcc

COPY dev_requirements.txt .

RUN pip3 install --upgrade pip \
    && pip3 install -r dev_requirements.txt

COPY startup.sh .

RUN sed -i 's/\r$//g' /backend/startup.sh

RUN chmod +x /backend/startup.sh

COPY . .

EXPOSE 8000

# ENTRYPOINT [ "/backend/startup.sh" ]