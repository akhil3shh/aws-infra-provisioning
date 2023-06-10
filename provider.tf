# This block sets the AWS provider configuration for Terraform. 
# In this case, we're using the "aws" provider and setting the region to "us-east-1".

provider "aws" {
  region = "us-east-1"
  shared_credentials_files = ["/home/ogasege/.aws/credentials"]
}


