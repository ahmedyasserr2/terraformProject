.
├── README.md
├── modules
│   ├── dynamodb
│   │   ├── dynamodb.tf
│   │   └── variables.tf
│   ├── ec2
│   │   ├── ec2.tf
│   │   └── variables.tf
│   ├── network
│   │   ├── nw.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── s3
│       ├── s3.tf
│       └── variables.tf
├── regionA
│   ├── main.tf
│   ├── provider.tf
│   ├── terraform.tfvars
│   └── variables.tf
└── regionB
    ├── main.tf
    ├── provider.tf
    ├── terraform.tfvars
    └── variables.tf

---

# Terraform AWS Infrastructure Project

This project uses Terraform to provision AWS resources across two regions. It is organized into modules for reusability and separated by regions to manage resources in different AWS regions effectively.

## Project Structure

The project is organized as follows:

- `modules/`: Contains reusable modules for different AWS resources.
  - `dynamodb/`: Module for provisioning DynamoDB tables.
  - `ec2/`: Module for provisioning EC2 instances.
  - `network/`: Module for provisioning VPC, subnets, and related networking resources.
  - `s3/`: Module for provisioning S3 buckets.
- `regionA/`: Terraform configurations for provisioning resources in the first AWS region.
- `regionB/`: Terraform configurations for provisioning resources in the second AWS region.

Each region folder contains:

- `main.tf`: Main Terraform configuration file that calls modules with region-specific parameters.
- `provider.tf`: Configures the AWS provider and region.
- `terraform.tfvars`: Defines values for the variables used in `main.tf`.
- `variables.tf`: Declares variables used in `main.tf`.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- An [AWS account](https://aws.amazon.com/) and credentials configured for Terraform.

## Usage

1. **Clone the repository:**

   ```
   git clone https://github.com/ahmedyasserr2/terraformProject.git
   cd terraformProject
   ```

2. **Initialize Terraform:**

   Navigate to the desired region directory (e.g., `regionA` or `regionB`) and run:

   ```
   terraform init
   ```

   This will download the necessary Terraform providers and modules.

3. **Review the plan:**

   ```
   terraform plan
   ```

   Review the actions Terraform will perform to reach the desired state.

4. **Apply the configuration:**

   ```
   terraform apply
   ```

   Confirm the action to provision the AWS resources as defined in your Terraform configurations.

## Modules Overview

- **DynamoDB Module:** Provisions a DynamoDB table with configurable attributes and throughput settings.
- **EC2 Module:** Provisions an EC2 instance with configurable instance type, AMI, and networking settings.
- **Network Module:** Sets up a VPC, subnets, internet gateway, and routing to create a network infrastructure for the resources.
- **S3 Module:** Creates an S3 bucket with configurable name and tags.

Refer to each module's `variables.tf` for configuration options and `main.tf` in the region directories for example usage.

## Cleanup

To destroy the AWS resources managed by Terraform, run:

```
terraform destroy
```

in the respective region directory. Confirm the action when prompted.

---

**Note:** Replace `regionA` and `regionB` with actual AWS region codes as per your project requirements. Adjust the `terraform.tfvars` in each region folder to suit your specific configuration needs.
