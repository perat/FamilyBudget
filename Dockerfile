FROM python:3.8-slim as production

ENV PYTHONUNBUFFERED=1
WORKDIR /app/

RUN apt-get update && \
    apt-get install -y \
    bash \
    build-essential \
    gcc \
    libffi-dev \
    musl-dev \
    openssl \
    postgresql \
    libpq-dev

COPY requirements/prod ./requirements/prod
RUN pip install -r ./requirements/prod

COPY manage.py ./manage.py
COPY setup.cfg ./setup.cfg
COPY familyBudget ./familyBudget

EXPOSE 8000

FROM production as development

COPY requirements/dev ./requirements/dev
RUN pip install -r ./requirements/dev

COPY . .
