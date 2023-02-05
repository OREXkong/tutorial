FROM python

MAINTAINER DANIL <89242489714@mail.ru>

RUN apt-get update && \
    apt-get install -y python3

WORKDIR /home

COPY HelloWorld.py /home/tutorial/HelloWorld.py

ENTRYPOINT ["/usr/bin/python3", "HelloWorld.py"]

