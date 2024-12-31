## Configuração do terraform
terraform {
    required_providers{
        aws = {
            version =">2.7.0"
            source = "hashicorp/aws"
        }
    }
}

## Configuração do provider da AWS
provider "aws" {
    region = "us-east-1"
    profile = "default"
}

## Definição do bucket
resource "aws_s3_bucket" "example" {
    bucket = "akfc--terraform"
    #acl = "private"
    tags = {
        Name = "akfc--terraform"
        Environment = "dev"
    }
}