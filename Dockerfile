# pull official base image
FROM python:3.10.7-slim-buster

# set work directory
WORKDIR /app

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# copy project
COPY . /app

# create DB
#RUN python init_db.py

#CMD python app.py
ENTRYPOINT ["python"]

CMD ["app.py"]