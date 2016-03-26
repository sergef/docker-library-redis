DOCKER_REGISTRY=
DOCKER_IMAGE_TAG=docker-library-redis

build:
	docker build -t $(DOCKER_REGISTRY)$(DOCKER_IMAGE_TAG) .

install-gc:
	gcloud docker push $(DOCKER_REGISTRY)$(DOCKER_IMAGE_TAG)