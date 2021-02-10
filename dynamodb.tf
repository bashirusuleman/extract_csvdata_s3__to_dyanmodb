resource "aws_dynamodb_table" "csv-dynamodb-table" {
  name           = var.dynamodb_table
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "ProductId"
 

  attribute {
    name = "ProductId"
    type = "S"
  }

  tags = {
    Name        = "dynamodb-table for CSV Data"
    Environment = "dev"
  }
}