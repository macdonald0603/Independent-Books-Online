terraform {
  backend "s3" {
    bucket = "ibo-dev-useast2-bucket"    #Create your s3 bucket 
    key    = "path/to/terraform.tfstate"                # Define your desired path for the state file within the bucket
    region = "us-east-2"                                       # Define the appropriate AWS region
    dynamodb_table = "ibo_dev_useast2_dynamo"     # Your DynamoDB table name for state locking
    encrypt = true                                # Enable encryption for the state file
  }
}
