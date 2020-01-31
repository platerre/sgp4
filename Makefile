dev.build:
	docker-compose pull
	docker-compose up --build -d

	docker exec sgp4_php sh -c 'composer install --no-interaction'

dev.bash:
	docker exec -it sgp4_php /bin/bash
