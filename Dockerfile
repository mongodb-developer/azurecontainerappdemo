# specifies the base image our docker container will be built on
FROM python:3.9-slim-buster 
# this sets the working directory inside the container to the directory I'm currently in
WORKDIR /azurecontainerappsdemo

# copies in our requirements.txt file
COPY ./config/requirements.txt /azurecontainerappsdemo/

# runs our requirements.txt file
RUN pip install -r requirements.txt

# this copies in all the current files in our directory
COPY . /azurecontainerappsdemo/

# tells flask to look for our main app.py file
ENV FLASK_APP=app.py
# this is the port Flask will be listening on
EXPOSE 5000
# specifies the command to run when the container starts, and allows access from anywhere
CMD ["flask", "run", "--host=0.0.0.0"]