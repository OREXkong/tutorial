FROM python

MAINTAINER DANIL <89242489714@mail.ru>

WORKDIR /home/tamik/tutorial

COPY ./tutorial .

CMD ["python", "HelloWorld.py"]

