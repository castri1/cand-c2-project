# TODO: Define the variable for aws_region
variable "region" {
  default = "us-east-1"
}

variable "daniel_profile" {
  default = "DanielDevOps"
}

variable "lambda_function_name" {
  default = "greet_lambda"
}

variable "lambda_function_handler" {
  default = "greet_lambda.lambda_handler"
}