Привет, чтобы создать образ можно воспользоваться Dockerfile - инструкцией, которая в свою очередь показывает что есть в образе, а также что именно при запуске будет выполнять. Когда Dockerfile запускается в терминале по команде docker run "название образа" производится проверка находится образ на месте или нет, а уже после запускается процесс описанный в самой инструкции.
Приведу пример,
Цель: Копировать и запустить файл HelloWorld.py
1)Выбираем родительский образ (From python)
2)Вписываем кто написал инструкцию, а также почту (MAINTAINER ... ...)#Необязательно
3)Устанавливаем python3
4)Копируем сам фаил HelloWorld.py
5)Запускаем HelloWorld.py
Инструкция готова, остаётся создать образ и проверить его
	Вводим в терминал docker build -t "Название образа" .
	Как получится можно проверить образ, достаточно ввести docker run "название" 
	


