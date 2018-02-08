images: aws-cli composer docker kubectl postgres ## Build all managed images
push: ## Push all managed images
FORCE: ;

build-spec:
	@echo $@
	@./build_spec.sh

# images

aws-cli: FORCE
	@echo $@
	@docker build -q --pull -t gentux/aws-cli aws-cli

composer: FORCE
	@echo $@
	@docker build -q --pull -t gentux/composer:1-php7 composer

docker: FORCE
	@echo $@
	@docker build -q --pull -t gentux/docker:stable docker
	@docker tag gentux/docker:stable gentux/docker

kubectl: FORCE
	@echo $@
	@docker build -q --pull -t gentux/kubectl:1.7.4 kubectl/1.7.4
	@docker build -q --pull -t gentux/kubectl:1.8.2 kubectl/1.8.2
	@docker build -q --pull -t gentux/kubectl:1.8.4 kubectl/1.8.4
	@docker tag gentux/kubectl:1.8.4 gentux/kubectl:1.8
	@docker tag gentux/kubectl:1.8.4 gentux/kubectl:1

postgres: FORCE
	@echo $@
	@docker build -q --pull -t gentux/postgres:9.6-alpine postgres/9.6-alpine
	@docker tag gentux/postgres:9.6-alpine gentux/postgres:9-alpine

# push

push-postgres: FORCE
	@echo $@
	docker push gentux/postgres:9.6-alpine
	docker push gentux/postgres:9-alpine

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
