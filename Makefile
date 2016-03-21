bench_build:
	@docker build -t docker-phoronix -f Dockerfile .

bench_run:
	@docker run -i --name docker-phoronix docker-phoronix 

bench_cleanup_image:
	@echo "Removing old image..."
	@docker images -q --filter "dangling=true" | xargs -r docker rmi

bench_cleanup_container:
	@echo "Removing container..."
	@docker stop docker-bench | xargs -r docker rm 

bench_deploy: bench_build bench_cleanup_image


bench: bench_run bench_cleanup_container
