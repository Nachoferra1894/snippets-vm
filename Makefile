dev:
	docker compose -f docker-compose.yml -f docker-compose.dev.yml up -d

pull:
	docker compose -f docker-compose.yml -f docker-compose.dev.yml pull

restart:
	docker compose -f docker-compose.yml -f docker-compose.dev.yml restart

ddown:
	docker compose -f docker-compose.yml -f docker-compose.dev.yml down

prod:
	docker compose -f docker-compose.yml -f docker-compose.prod.yml up -d

pdown:
	docker compose -f docker-compose.yml -f docker-compose.prod.yml down

.PHONY: dev prod ddown pdown restart pull
