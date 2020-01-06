.PHONY: help
.DEFAULT_GOAL := help

help:
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-25s\033[0m %s\n", $$1, $$2, $$3, $$4, $$5}'

build: ## Make image for use terraform
	@docker build -t fabianoflorentino/terraform-and-awscli .

run: ## Start Terraform
	@docker container rm -f terraform
	@docker run -it --name terraform -v ${PWD}:/aws -w /aws --entrypoint "" fabianoflorentino/terraform-and-awscli sh

plan: ## Create plan to deploy on AWS with Terraform
	@terraform plan --out aws-expert.tfplan

apply: ## Apply plan on AWS with Terraform
	@terraform apply aws-expert.tfplan

destroy: ## Destroy Everything
	@terraform destroy