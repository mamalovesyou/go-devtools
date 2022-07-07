DOCKER_REGISTRY ?= matthieuberger
DOCKER_IMAGE_TAG ?= latest
DOCKER_BUILD_CMD := docker buildx build --platform=linux/arm64,linux/amd64

go-devtools:
	@printf "Building docker image $(DOCKER_REGISTRY)/go-devtools:$(DOCKER_IMAGE_TAG)...\n"
	@$(DOCKER_BUILD_CMD) . --tag $(DOCKER_REGISTRY)/go-devtools:$(DOCKER_IMAGE_TAG) --push
