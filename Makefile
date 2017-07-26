.PHONY: default run start stop

default: run

start run:
	docker run -it --rm -v "$(PWD):/app" -p 3000:3000 craigrhodes/react run

stop:
