build:
	docker-compose build

run-qrng:
	docker-compose run --rm crypto

build-firmware:
	docker-compose run --rm firmware

build-paper:
	docker-compose run --rm latex

clean:
	docker system prune -f
