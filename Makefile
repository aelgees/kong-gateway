DOCKER_COMPOSE= docker-compose -f docker-compose.yml -p kong-gateway

create-network:
	@docker network create kong-gateway

start:
	@echo "Start Kong Gateway ..."
	@echo
	@$(DOCKER_COMPOSE) up -d

stop:
	@echo "Start Kong Gateway ..."
	@echo
	@$(DOCKER_COMPOSE) stop
	
down:
	@echo "Down Kong Gateway ..."
	@echo
	@$(DOCKER_COMPOSE) down --remove-orphans