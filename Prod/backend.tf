terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "tg-bosch-assesment" #tg-bosch-assesment
    key    = "backend/prod/terraform.tfstate"
    region = "eu-central-1"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "tg-bosch-dynamo-assesment"
    encrypt        = true
  }
}