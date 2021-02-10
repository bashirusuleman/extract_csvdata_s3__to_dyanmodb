resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = file("./policy.json")


resource "aws_lambda_function" "s3_dynamodb_lambda" {
#   filename      = "lambda_function_payload.zip"
  function_name = "lambda_function_name"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "lambda_function.lambda_handler"

  
  runtime = "python3.8"

  
}