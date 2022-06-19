terraform {
  backend "s3" {
    bucket = "taburasoba-tfstate"
    key = "example/prod/network/main_v1.0.0.tfstate"
    region = "ap-northeast-1"
  }
}