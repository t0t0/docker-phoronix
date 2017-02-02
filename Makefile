PHORONIX_VERSION?=6.2.2

bench_build:
	@docker build -t t0t0/docker-phoronix:$(PHORONIX_VERSION) --build-arg PHORONIX_VERSION=$(PHORONIX_VERSION) .

bench:
	@docker run --rm -i --name docker-phoronix docker-phoronix
