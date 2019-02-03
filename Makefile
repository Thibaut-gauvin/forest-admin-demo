COMPOSE_CMD=docker-compose

##
## ---------------------
## Available make target
## ---------------------
##

all: help
help: ## Display this message
	@grep -E '(^[a-zA-Z0-9_-.]+:.*?##.*$$)|(^##)' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

##
## Common
## ------
##

install: build ## Install app
	${COMPOSE_CMD} run --rm node bash -c 'cd /home/docker && npm install'
	${COMPOSE_CMD} up -d db
	@echo "Wait a few second to let db container init"
	sleep 10
	$(MAKE) db.init
	$(MAKE) start

ssh: ## Start new bash session inside node container
	${COMPOSE_CMD} run --rm node bash

##
## Database
## --------
##

db.init: ## Init database
	${COMPOSE_CMD} run --rm db dropdb --if-exists -U devops -h db forestadmin_demo
	${COMPOSE_CMD} run --rm db createdb -U devops -h db forestadmin_demo
	${COMPOSE_CMD} run --rm db sh -c 'psql -h db -U devops forestadmin_demo < /home/docker/demo_dump.sql'

db.cli: ## Start new psql prompt
	${COMPOSE_CMD} run --rm db sh -c 'psql -h db -U devops forestadmin_demo'

##
## Docker
## ------
##

build: ## Build Docker images and ensure they are up to date
	${COMPOSE_CMD} build

start: ## Start Docker containers
	${COMPOSE_CMD} up -d
	${COMPOSE_CMD} ps

stop: ## Stop Docker containers
	${COMPOSE_CMD} down --remove-orphans

restart: stop start ## Restart Docker containers

logs: ## Display Docker containers logs (Press 'Ctrl + c' to exit)
	${COMPOSE_CMD} logs -f
