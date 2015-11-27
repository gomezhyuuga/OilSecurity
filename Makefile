all: ant up
ant:
	ant -f /Users/gomezhyuuga/Development/jee/proyecto/OilSecurity -Dnb.internal.action.name=rebuild -DforceRedeploy=false -Dbrowser.context=/Users/gomezhyuuga/Development/jee/proyecto/OilSecurity clean dist
up: Dockerfile
	docker-compose up
db_attach:
	docker exec -it s_mysql bash
db: db/schema.sql
	docker run -it --link s_mysql:mysql --rm mysql sh -c 'exec mysql -h"$$MYSQL_PORT_3306_TCP_ADDR" -P"$$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'
