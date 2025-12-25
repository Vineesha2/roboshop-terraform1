dev-init:
	terraform init -backend-config=./envinonments/dev/state.tfvars

dev-plan:
	terraform plan -var-file=envinonments/dev/main.tfvars

dev-apply:
	terraform apply -var-file=envinonments/dev/main.tfvars


prod-init:
	terraform init -backend-config=./envinonments/prod/state.tfvars

prod-plan:
	terraform plan -var-file=envinonments/prod/main.tfvars

prod-apply:
	terraform apply -var-file=envinonments/prod/main.tfvars

