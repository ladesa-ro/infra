HERE:=$(shell pwd)

CONFIG_IMAGE:=quay.io/projectquay/quay:latest
CONFIG_SECRET:=$(shell openssl rand -hex 12)
CONFIG_VOL:=${HERE}/v/app_config
CONFIG_CONTAINER_NAME:=ladesa-infra-registry-setup

setup:
	make setup-cleanup

	# |-----------------------------------------------------------|
	# | username: quayconfig | password: ${CONFIG_SECRET} |
	# |-----------------------------------------------------------|

	docker run --name ${CONFIG_CONTAINER_NAME} -p 8080:8080 -v ${CONFIG_VOL}:/conf/stack -d -it ${CONFIG_IMAGE} config ${CONFIG_SECRET}

setup-logs:
	docker logs -f ${CONFIG_CONTAINER_NAME}

setup-cleanup:
	docker rm -f ${CONFIG_CONTAINER_NAME}

copy:
	cp config.yaml /var/lib/ladesa-ro/infra/storage/quay/config/config.yaml