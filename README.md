# vita_testovoe
# Задаание 1:
1.
Для запуска: <br />
./log_counter.sh sample_logs <br />
./log_counter.sh sample_logs/ <br />
./log_counter.sh ./sample_logs/ <br />

Если файл не исполняемый, сначала сделать исполняемым
chmod +x /log_counter.sh

2. Проверить можно добавить вывод ошибок в отдельный файл через: 2>

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

4. В compose нет авто.восстановления после сбоя, а в swarm авто.перезапускает контейнеры и раскидывает по узлам, управляет нагрузкой и отказоустойчивостью..
 Compose для разработки используют, swarm для продакшена
========================================================================================================================================================================================================

Задание 3:
 1.
  Запуск контейнера с задаными параметрами: docker run -d  --name=vita_nginx -p 8081:80 nginx:alpine
  ![image](https://github.com/user-attachments/assets/f2464544-de07-49a8-8c35-c369e3ecd849)
 
 2. 
  Посмотреть все запущенные контейнеры: docker ps
  Посмотреть логи контейнера vita_nginx: docker logs vita_nginx
  Выполнить команду внутри работающего контейнера: docker exec vita_nginx ls -la /usr/share/nginx/html
  ![image](https://github.com/user-attachments/assets/1ebe1070-b4fb-4e22-aa36-b3f7ce58b4c5)
 3.
  Остановить контейнер: docker stop vita_nginx/container_id
  Удалить остановленый контейнер: docker rm vita_nginx/container_id
  ![image](https://github.com/user-attachments/assets/88c53732-5081-407e-974b-de0a4af9c134)

 4. 
  Просмотр всех докер образов: docker images
  Удалить образ, если не используется: docker rmi nginx:alpine
![image](https://github.com/user-attachments/assets/54d5ad1b-a13c-4dc5-b23f-bfb14e302656)
 
![image](https://github.com/user-attachments/assets/592bd9e9-14b6-4b38-a9b1-dbf976559212)

 Вопросы:
  1. image - шаблон, в котором прописаны все/почти все настройки для работы контейнера, container - запущенный экземляр образа.
  2. Докер выдаст ошибку(имя контейнеро занято), даже если контейнер остановлен.
  3. -d нужен для запуска контейнера в фоновом режиме 

========================================================================================================================================================================================================

