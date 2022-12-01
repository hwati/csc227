FROM python:3
RUN mkdir/application
WORKDIR /application
COPY requirments.tx .
RUN pip install -r requirments.txt

COPY ..

ENV PYTHONNUMBUFFERED 1

EXPOSE 8001
STOPSIGNAL SIGINT
ENTRYPOINT ["python"]
CMD ["app.py"]