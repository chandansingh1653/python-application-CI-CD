FROM  ubuntu:18.04
RUN apt-get update
RUN apt-get install -y python python-dev python-pip python-virtualenv
RUN apt-get install -y python3-pip
ENV FLASK_APP=app.py
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ADD requirements.txt /tmp
RUN pip3 install -r /tmp/requirements.txt
RUN mkdir -p /data
COPY src/* /data/src/
WORKDIR /data/src
CMD python3 -m flask run
