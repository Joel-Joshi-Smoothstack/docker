#docker run --name memesalad -v database:/var/lib/mysql -e MYSQL_DATABASE=%DB_NAME% -e MYSQL_USER=%DB_PASSWORD% -e MYSQL_RANDOM_ROOT_PASSWORD=1 -p 3307:3306 sql


FROM mysql:8.0.28-oracle
ADD db.sql /docker-entrypoint-initdb.d
EXPOSE 3306
COPY . /

#compose/compose.yml
#https://docs.docker.com/compose/compose-file/
#image, depends-on, restart, ports, links, volumes
#compose has its own network?