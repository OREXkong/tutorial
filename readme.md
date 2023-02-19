# СОЗДАНИЕ ОБРАЗА

В данной статье описывается создание образа через Dockerfile. 

## Содержание

* [Что такое Dockerfile](#Dockerfile)

* Создание Dockerfile

* Создание и запуск образа

* Код Docerfile

## Что такое Dockerfile <a name="Dockerfile"></a>

Dockerfile - текстовый фаил, в котором находится инструкция по созданию образа.
 Он необходим для автоматизации сборки, при которой выполняются последовательно
 команды пользователя, записанные им в инструкции.

## Создание Dockerfile

Задача: Копировать и запустить файл hello_world.py

Для начала создаём текстовый документ и запускаем его, к примеру, в блокноте

1. Выбираем родительский образ 

	
		From python


2. Отмечаем кто написал инструкцию


		MAINTAINER "Kto-to"


> Пункт №2 необязательный

3. Устанавливаем python3


		RUN apt-get update && \
    		apt-get install -y python3


4. Отмечаем рабочую среду


		WORKDIR /home


4. Копируем сам фаил hello_world.py


		COPY HelloWorld.py /home/tutorial/hello_world.py


5. Запускаем HelloWorld.py


		ENTRYPOINT ["/usr/bin/python3", "HelloWorld.py"]


## Создание и запуск образа

Инструкция готова, остаётся создать образ и проверить запустив его

Вводим в терминал, вписывая имя созданного образа
	
	docker build -t "Obraz" .

Как получится можно проверить образ, достаточно ввести 

	docker run "Obraz" 


## Код Dockerfile

Вот как выглядит инструкция в целом:

		FROM python

	MAINTAINER DANIL <89242489714@mail.ru>

	RUN apt-get update && \
   	 apt-get install -y python3

	WORKDIR /home

	COPY HelloWorld.py /home/tutorial/HelloWorld.py

	ENTRYPOINT ["/usr/bin/python3", "HelloWorld.py"]


	


