provider "aws" {
  region = "us-east-1" # Update with your desired AWS region
}

# Define the Lambda Layer
resource "aws_lambda_layer_version" "my_lambda_layer" {
  filename        = "lambda_layer/layer_code.py"
  layer_name      = "my-layer-name"
  description     = "My Lambda Layer"
  compatible_runtimes = ["python3.8"]
}


# Define the Lambda function
resource "aws_lambda_function" "my_lambda_function" {
  function_name = var.function_name
  handler      = "main.lambda_handler"
  runtime      = "python3.8"
  role         = aws_iam_role.lambda_role.arn
  filename     = "lambda_function/lambda_function.zip"

  # Attach the Lambda Layer
  layers = [var.layer_arn]
}

# Define an IAM role for the Lambda function (role definition not shown here)
