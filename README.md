# How to create a Windows VM using Terraform

## Prerequisites
1. Git
2. Terraform
3. Azure subscription
4. Azure CLI

## Clone this repo to local development (PC, laptop)

```sh {"id":"01HXS6TNCQ3K5EGMW56MNV955M"}
git clone https://github.com/piky/azure-windows-vm.git
```

### Optional for multiple projects
1. After cloning you can rename the folder/directory to meet your project name.
2. You can change default Windows machine name in `variables.tf` file.
3. You can change {admin_username} in `main.tf` file

## Initialize Terraform project 

```sh {"id":"01HXS70605MN50AS73N277GFF5"}
cd azure-windows-vm
```

```sh {"id":"01HXS7936207QW5EXWBDAFB87D"}
terraform init -upgrade
```

## Plan and Apply

```sh {"id":"01HXS7BC3EQNE7G98WWFE8KDTX"}
terraform plan -out main.tfplan
```

```sh {"id":"01HXS7D1R3CP3K8ANZWKQ7HV6T"}
terraform apply main.tfplan
```

## Verify the result

```sh {"id":"01HXS7DX9KEBABBCCS9R0S6707"}
echo $(terraform output -raw public_ip_address)
```

### Open browser with the public IP from previous output

## Clean up resource for saving your bill
Run below command when you don't need the VM.

```sh {"id":"01HXS7H2CSXQ5R35K9PNYPC97V"}
terraform plan -destroy -out main.destroy.tfplan
```

```sh {"id":"01HXS7HC7D9YRFY0TQJEN5V4NA"}
terraform apply main.destroy.tfplan
```

## Reference and Troubleshoot
https://learn.microsoft.com/en-us/azure/virtual-machines/windows/quick-create-terraform