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
