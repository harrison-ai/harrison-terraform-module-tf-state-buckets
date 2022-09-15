.PHONY: .tf_version

TF_VERSION := $(shell cat .tf_version)

.EXPORT_ALL_VARIABLES:
	export TF_VERSION=${TF_VERSION}

fmt:
	docker-compose run --rm terraform fmt -recursive

ci-fmt:
	docker-compose run --rm --workdir /app terraform fmt -recursive -check -diff -write=false

tf-shell:
	docker-compose run --rm terraform /bin/ash

pull:
	docker-compose pull

docs:
	docker-compose run --rm terraform-docs terraform-docs-replace md README.md

update-tf:
	bash scripts/update-tf.sh

validate:
	bash scripts/validate-tf.sh
