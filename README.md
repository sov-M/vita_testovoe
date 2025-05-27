# vita_testovoe
Задаание 1:
1.
Для запуска: 
./log_counter.sh sample_logs
./log_counter.sh sample_logs/
./log_counter.sh ./sample_logs/

Если файл не исполняемый, сначала сделать исполняемым
chmod +x /log_counter.sh

2. 
Проверить можно добавить вывод ошибок в отдельный файл через: 2>

Задание 2:

1. 
 docker-compose up -d

2.
 Сохранить изменения.
 docker-compose exec nginx nginx -s reload
 "docker-compose exec nginx"  выполнить команду внутри конейнера nginx
 "nginx -s reload" - перезапустить nginx не прерывя соединения
 Из-за смонтированого тома на хосте изменится всё автоматически.

3.
 В docker-compose.yml указано, что они изолированы в сети vita, между собой общаются используя имена nginx и go_app.

4.
 В compose нет авто.восстановления после сбоя, а в swarm авто.перезапускает контейнеры и раскидывает по узлам, управляет нагрузкой и отказоустойчивостью..
 Compose для разработки используют, swarm для продакшена
 
