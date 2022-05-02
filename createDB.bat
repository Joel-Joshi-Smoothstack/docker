
::docker container prune
title mySQL container
docker stop mysqldb
::docker rm -v mysqldb
::docker network create opennetworkconnection
docker run -d --network opennetworkconnection --name mysqldb --network-alias mysqlnet -v ms-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=sys mysql:8.0.22

::docker run -d --name mysqldb -v ms-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=sys mysql:8.0.22

::docker exec mysqldb sudo apt-get install mysql-server
::set /p inp=type db.sql |  mysql -uroot -ppassword alinedb 
::docker exec -i mysqldb %inp%
::docker exec -i mysqldb mysql  -uroot --password="secret" alinedb  <  db.sql
::::docker-compose exec mysqldb mysql -root -password="password" alinedb < db.sql
::docker exec -it mysqldb bash
::mysql -u root -p alinedb -h 127.0.0.1
cmd /k