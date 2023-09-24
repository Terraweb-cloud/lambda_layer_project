# Terraform AWS Lambda Function with Lambda Layer

This Terraform configuration demonstrates how to create an AWS Lambda function and attach a Lambda Layer to it. This setup allows you to manage your serverless functions and dependencies in a more modular way.

## Prerequisites

Before you can use this Terraform configuration, make sure you have the following prerequisites:

1. [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
2. AWS account credentials properly configured on your system (e.g., via AWS CLI or IAM role).
3. AWS Lambda Layer ZIP file prepared for your dependencies.


### Project tree
```bash
my_lambda_project/
├── lambda_function/
│   ├── main.py
│   └── requirements.txt
├── lambda_layer/
│   ├── layer_code.py
│   └── layer_requirements.txt
├── main.tf
├── variables.tf
├── outputs.tf

```

