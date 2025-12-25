dev-init:
	terraform init

dev-plan:
	terraform plan -var-file=envinonments/dev/main.tfvars

dev-apply:
	terraform apply -var-file=envinonments/dev/main.tfvars


