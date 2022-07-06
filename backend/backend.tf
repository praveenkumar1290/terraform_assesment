terraform {
  backend "s3" {
    # Replace this with your bucket name!
    # tf state file move into s3 bucket after s3 created we need to re - init with backend
    bucket         = "tg-bosch-assesment"
    key            = "backend/terraform.tfstate"
    region         = "eu-central-1"
 
    # Replace this with your DynamoDB table name!
    dynamodb_table = "tg-bosch-dynamo-assesment"
    encrypt        = true
  }
}