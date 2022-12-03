
FROM python:3.8-alpine
RUN mkdir/application
WORKDIR /application

# copy the requirements file into the image
COPY requirments.txt .
RUN pip install -r requirements.txt

COPY . .l

ENV PYTHONUNBUFFERED 1
EXPOSE 8080


# configure the container to run in an executed manner
ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
