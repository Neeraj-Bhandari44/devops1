FROM python:3.12.4-slim


WORKDIR /app

RUN pip install django

RUN pip install pytest

RUN pip install django-pytest

COPY . /app/

CMD ["pytest"]

CMD ["pytest", "--junitxml=pytest.xml"]