# resource "aws_dynamodb_table" "dynamodb" {
#   name         = "existing-dynamodb"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key     = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }