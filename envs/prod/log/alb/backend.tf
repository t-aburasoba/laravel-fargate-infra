terraform {
  backend "s3" {
    bucket = "taburasoba-tfstate"
    key = "example/prod/log/alb_v1.0.0.tfstate"
    region = "ap-northeast-1"
  }
}