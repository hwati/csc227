# start by pulling the python image
FROM python:3.8-alpine

# copy the requirements file into the image
COPY ./requirements.txt /flaskapp/requirements.txt


# copy the html files into a new templates folder
COPY ./Yourorder.html /flaskapp/templates/Yourorder.html
COPY ./home.html /flaskapp/templates/home.html


# switch working directory
WORKDIR /flaskapp

# install the dependencies and packages in the requirements file

RUN pip install -r requirements.txt

# copy every content from the local file to the image
COPY . /flaskapp


# configure the container to run in an executed manner
ENTRYPOINT [ "python" ]
CMD ["app.py"]

