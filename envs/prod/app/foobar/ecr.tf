resource "aws_ecr_repository" "nginx" {
  name = "example-prod-foobar-nginx"
  tags = {
    Name = "example-prod-foobar-nginx"
  }
}

resource "aws_ecr_lifecycle_policy" "nginx" {
  policy = jsondecode(
    {
      "rules" : {
        "rulePriority" : 1,
        "description" : "Hold only 10 images, expire all others",
        "selection" : {
          "tagStatus" : "any",
          "countType" : "imageCountMoreThan",
          "countNumber" : 10
        },
        "action" : {
          "type" : "expire"
        }
      }
    }
  )
  repository = "aws_ecr_repository.nginx.name"
}