dev-init:
	git pull
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config=./envinonments/dev/state.tfvars

dev-plan:
	terraform plan -var-file=envinonments/dev/main.tfvars

dev-apply: dev-init
	terraform apply -var-file=envinonments/dev/main.tfvars -auto-approve

dev-destroy: dev-init
	terraform destroy -var-file=envinonments/dev/main.tfvars -auto-approve
prod-init:
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config=./envinonments/prod/state.tfvars

prod-plan:
	terraform plan -var-file=envinonments/prod/main.tfvars

prod-apply: prod-init
	terraform apply -var-file=envinonments/prod/main.tfvars -auto-approve -var token=${var.token}

prod-destroy: prod-init
	terraform destroy -var-file=envinonments/prod/main.tfvars -auto-approve -var token=${var.token}

tools-infra: ## Tools Infra
	git pull
	rm -f .terraform/terraform.tfstate
	cd tools ; terraform init ; terraform apply -auto-approve

