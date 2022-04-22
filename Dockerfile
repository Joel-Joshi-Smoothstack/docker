#docker run --name memesalad -v database:/var/lib/mysql -e MYSQL_DATABASE=%DB_NAME% -e MYSQL_USER=%DB_PASSWORD% -e MYSQL_RANDOM_ROOT_PASSWORD=1 -p 3307:3306 sql


FROM mysql:8.0.28-oracle
COPY . /