region = "ap-south-1"

environment = "QA"
vpc = {
    name = "qa.example.com"
    cidr = "10.1.0.0/16"
}
subnets = [
    {
        name = "private-1.qa.example.com"
        cidr = "10.1.1.0/24"
    },
    {
        name = "private-2.qa.example.com"
        cidr = "10.1.2.0/24"
    },
    {
        name = "public-1.qa.example.com"
        cidr = "10.1.100.0/24"
    },
    {
        name = "public-2.qa.example.com"
        cidr = "10.1.101.0/24"
    }
  ]