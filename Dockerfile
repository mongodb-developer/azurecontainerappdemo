FROM python:3.9-slim-buster
WORKDIR /azurecontainerappsdemo

COPY ./config/requirements.txt /azurecontainerappsdemo/
RUN pip install -r requirements.txt

COPY . /azurecontainerappsdemo/

ENV FLASK_APP=app.py
EXPOSE 5000
CMD ["flask", "run"]



