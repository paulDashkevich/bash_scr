#ДZ#
Пишем скрипт скрипт для крона
который раз в час присылает на заданную почту
- X IP адресов (с наибольшим кол-вом запросов) с указанием кол-ва запросов c момента последнего запуска скрипта
- Y запрашиваемых адресов (с наибольшим кол-вом запросов) с указанием кол-ва запросов c момента последнего запуска скрипта
- все ошибки c момента последнего запуска
- список всех кодов возврата с указанием их кол-ва с момента последнего запуска
должна быть реализована защита от мультизапуска.



Скрипт анализирует файл access.log веб-сервера, который находится в /var/log/access.log

Для работы скриптов требуется поместить его в директорию где находится лог файл. То есть:
scan.sh m.sh /var/log/путь_к_серверу_с_логфайлом

Так же необходимо в папке /etc/cron.hourly разместить скрипт mail.cron который будет запускать скрипт m.sh раз в час, и не допускать мультизапуск.

Скрипт m.sh производит  поиск и запуск скрипта scan.sh и отправляет его вывод на почту root-пользователя
