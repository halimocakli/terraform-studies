## Step-02: Auto load input variables with .auto.tfvars files

- We will create a file with extension as `.auto.tfvars`.
- With this extension, whatever may be the file name, the variables inside these files will be auto loaded during `terraform plan or apply`

```t
# Initialize Terraform
terraform init

# Validate Terraform configuration files
terraform validate

# Format Terraform configuration files
terraform fmt

# Review the terraform plan
terraform plan
```
