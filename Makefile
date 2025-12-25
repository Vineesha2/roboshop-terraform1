dev-init:
	terraform init

dev-plan:
	terraform plan -var-file=envinonments/dev/main.tfvars

dev-apply:
	terraform apply -var-file=envinonments/dev/main.tfvars


prod-init:
	terraform init

prod-plan:
	terraform plan -var-file=envinonments/prod/main.tfvars

prod-apply:
	terraform apply -var-file=envinonments/prod/main.tfvars