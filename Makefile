CONTAINER_NAME=skeleton-vue

deps:
	docker run -w "/opt/app" -v "${PWD}:/opt/app" node:alpine yarn install

down:
	docker kill $(CONTAINER_NAME)

up: deps
	docker run -p "3000:3000" -w "/opt/app" -v "${PWD}:/opt/app" -e CI=true --name $(CONTAINER_NAME) node:alpine yarn dev

.PHONY: test
test: deps
	docker run -w "/opt/app" -v "${PWD}:/opt/app" -e CI=true node:alpine yarn test

.PHONY: coverage
coverage: deps
	docker run -w "/opt/app" -v "${PWD}:/opt/app" -e CI=true node:alpine yarn coverage