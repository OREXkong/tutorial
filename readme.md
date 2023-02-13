# СОЗДАНИЕ ОБРАЗА

Для того чтобы создать образ можно воспользоваться Dockerfile - инструкцией, которая в свою очередь показывает что есть в образе, а также что именно при запуске будет выполнять. 

Когда Dockerfile запускается в терминале по команде 


	docker run "название образа" 


производится проверка на наличие образа, а уже после запускается процесс описанный в самой инструкции.

---
Пример создания Dockerfile

---

Задача: Копировать и запустить файл HelloWorld 

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


4. Копируем сам фаил HelloWorld.py


	COPY HelloWorld.py /home/tutorial/HelloWorld.py


5. Запускаем HelloWorld.py


	ENTRYPOINT ["/usr/bin/python3", "HelloWorld.py"]


***

Инструкция готова, остаётся создать образ и проверить его

Вводим в терминал, вписывая имя созданного образа
	
	docker build -t "Obraz" .

Как получится можно проверить образ, достаточно ввести docker run "Obraz" 

***

*Код полностью*

		FROM python

	MAINTAINER DANIL <89242489714@mail.ru>

	RUN apt-get update && \
   	 apt-get install -y python3

	WORKDIR /home

	COPY HelloWorld.py /home/tutorial/HelloWorld.py

	ENTRYPOINT ["/usr/bin/python3", "HelloWorld.py"]


	


