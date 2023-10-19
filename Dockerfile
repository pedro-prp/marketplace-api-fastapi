from python:3.9

ENV PYTHONUNBUFFERED 1
ENV PYTHONWRITEBYTECODE 1

WORKDIR /home/app
COPY ./pyproject.toml ./poetry.lock ./

RUN pip install poetry
RUN poetry install
