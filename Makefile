build: stop-containers
	docker-compose up -d --build --remove-orphans
	docker ps

compile: stop-containers start-containers
	docker ps

stop-containers:
	docker-compose down

start-containers:
	docker-compose up -d --remove-orphans
