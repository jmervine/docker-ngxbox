PORT?=8000
IMAGE=jmervine/docker-ngxbox

build:
	docker build --pull -t $(IMAGE):latest .
	cd onbuild; docker build -t $(IMAGE):onbuild .

push:
	docker push $(IMAGE):latest
	docker push $(IMAGE):onbuild

run:
	docker run --rm -it -p $(PORT):80 $(IMAGE):latest
