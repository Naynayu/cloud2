# Dockerfile

# The first instruction is what image we want to base our container on
# We Use an official Python runtime as a parent image
FROM python:3.10

WORKDIR /colabdir

# Mounts the application code to the image
COPY . colabdir
COPY requirements.txt .
# Allows docker to cache installed dependencies between builds

RUN pip install --upgrade pip && pip install -r requirements.txt


EXPOSE 4000

# runs the production server
ENTRYPOINT ["python", "colabdir/manage.py"]
CMD ["runserver", "0.0.0.0:4000"]
