provider "aws" {
      access_key = "AKIAQGL7X2SFDGCOYKML"
      secret_key = "tmFjg6LmONVWoeYpI0VlXfunXEwsUy0KwXx+q0/q"
      region     = "eu-north-1"
      
}

resource "aws_iam_user" "example_user" {
  name = "example-user" 


  tags = {
    Name = "Example User"
  }
}

resource "aws_iam_access_key" "example_user_key" {
  user = aws_iam_user.example_user.name
}
