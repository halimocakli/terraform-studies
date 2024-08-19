# **Terraform Azure Studies**

This repository contains a collection of Terraform configurations and scripts developed as part of my studies and exploration of deploying and managing resources on Microsoft Azure using Terraform. The studies cover a range of Terraform features and Azure services, demonstrating practical examples of infrastructure as code (IaC) on a cloud platform.

## **Contents:**

- **00-Resources**: Starter resources and foundational configurations.
- **10-TF-Azure-Linux-VM**: Deployment and management of a Linux virtual machine on Azure.
- **Meta Arguments ([depends_on], [count], [for_each])**: Examples showcasing the use of Terraform's meta-arguments such as `depends_on`, `count`, and `for_each` for creating dynamic and conditional resource deployments.
- **Lifecycle**: Configurations that demonstrate managing resource lifecycle events like `create_before_destroy`, `prevent_destroy`, and `ignore_changes`.
- **Input Variables**: Demonstrations on the use of input variables in Terraform, including basic prompts, default values, and more advanced variable types like collections.
- **Provisioners**: Examples of using provisioners such as `file`, `local-exec`, and `remote-exec` to execute scripts on resources after they are created.
- **State Management and Imports**: Configurations related to managing the Terraform state, importing existing resources into Terraform, and using `terraform import`.
- **Modules**: Reusable Terraform modules, including examples of public and local modules for organizing and reusing code.
- **Static Website on Azure**: Setup of a static website hosted on Azure using Terraform.

## **Purpose:**

This repository serves as a learning and reference resource for anyone looking to understand and apply Terraform in managing Azure infrastructure. It provides hands-on examples and detailed configurations that can be adapted or expanded for more complex use cases.

## **Usage:**

Feel free to clone the repository and experiment with the configurations. Each directory contains its own `README.md` file (where applicable) explaining the purpose and usage of the Terraform scripts.

## **License:**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
