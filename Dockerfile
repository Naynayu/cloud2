FROM python:3.9
ENV PYTHONDONTWRITEBYTECODE 1
WORKDIR /colabdir/
COPY Pipfile Pipfile.lock /colabdir/
RUN pip install pipenv && pipenv install --system
COPY . /colabdir/
