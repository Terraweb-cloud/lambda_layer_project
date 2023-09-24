output "function_arn" {
  description = "ARN of the Lambda function"
  value       = aws_lambda_function.my_lambda_function.arn
}
