.PHONY: default run start install stop

default: run

start run:
	docker run --rm -d --name react-dev-server -v "$(PWD):/app" -p 3000:3000 craigrhodes/react run

install:
	@read -p "Package to install: " PACKAGE
	@docker run -it --rm -v "$(PWD):/app" craigrhodes/react npm install $$PACKAGE

stop:
	docker stop react-dev-server
