variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
  default     = "my-lambda-function"
}

variable "layer_arn" {
  description = "ARN of the Lambda Layer"
  type        = string
  default     = aws_lambda_layer_version.my_lambda_layer.arn
}
