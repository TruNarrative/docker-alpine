.PHONY: default help build-base build-all

DIR=$(shell dirname $(shell readlink -f Makefile))
IMAGE="trunarrative/alpine"

default: build-all

help: ## show this help message and exit
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-18s\033[0m %s\n", $$1, $$2}'

build-base: ## build base image
	@docker build --pull -t $(IMAGE):base base

build-all: build-base ## build all images
	@for f in $(DIR)/*/; do \
		[ $$(basename $$f) = "base" ] && continue; \
		docker build --pull -t $(IMAGE):$$(basename $$f) $$(basename $$f); \
	done
