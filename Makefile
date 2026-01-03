help: ## Show this help message
	@echo "Usage: make <target>"
	@echo ""
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

dev-init: ## Dev init
	git pull
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config=./envinonments/dev/state.tfvars

dev-plan: ## Dev Plan
	terraform plan -var-file=envinonments/dev/main.tfvars

dev-apply: dev-init ## Dev Apply
	terraform apply -var-file=envinonments/dev/main.tfvars -auto-approve -var token=$(token)

dev-destroy: dev-init ## Dev Destroy
	terraform destroy -var-file=envinonments/dev/main.tfvars -auto-approve -var token=$(token)
prod-init:
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config=./envinonments/prod/state.tfvars

prod-plan: ## Plan Plan
	terraform plan -var-file=envinonments/prod/main.tfvars

prod-apply: prod-init ## Prod Apply
	terraform apply -var-file=envinonments/prod/main.tfvars -auto-approve -var token=$(token)

prod-destroy: prod-init ## Prod Destroy
	terraform destroy -var-file=envinonments/prod/main.tfvars -auto-approve -var token=$(token)

tools-infra: ## Tools Infra
	git pull
	rm -f .terraform/terraform.tfstate
	cd tools ; terraform init ; terraform apply -auto-approve -var token=$(token)

