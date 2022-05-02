if sql container not created:

	export data in db to somewhere accessible 
	docker network create opennetworkconnection
	docker run -d --network opennetworkconnection --network-alias mysqlnet -v ms-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=sys mysql:8.0.22
	docker container ls (to find the name of container)
	docker container rename containerName mysqldb
	(move to location with .sql data)
	docker exec -i mysqldb mysql -uroot --password="password" alinedb < db.sql
	docker exec -it mysqldb bash
	(in bash) mysql -u root -p alinedb -h 127.0.0.1
	>password
	
	(int sql prompt)
	SHOW DATABASES;
	USE alinedb;
	SHOW TABLES;
	(test) SELECT * FROM (a table in alinedb)\






MAKE SURE TO CHANGE ALL APPLICATION YAMLS
'jdbc:mysql//localhost:port/db'
turns into
'jdbc:mysql//(DB_HOST):3306/(DB_NAME)'

LOCALHOST = DATABASE CONTAINER NAME
PORT = WHATEVER PORT THE DATABASE IS LISTENING ON
DB = DATABASE NAME IN THE MYSQL CONTAINER


