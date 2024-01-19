variable "filename" {
          default = "/home/ubuntu/terraform/terraform-variables/devops_automated.txt"
}


variable "content" {
          default = "this is autogenerate from a variable" 
}


variable "devops_trainer" {}

variable "content_map" {
type = map
default = {
"content1" = "this is content1"
"content2" = "this is content2"
}
}
 

variable "file_list" {
type = list 
default = ["/home/ubuntu/terraform/terraform-variables/file1.txt" ,  "/home/ubuntu/terraform/terraform-variables/file2.txt"]
}


variable "aws_ec2_object" {
  type = object({
    name  = string
    instances = number
    keys = list(string) # Specify the element type inside the list
    ami = string
})


default = {
	name = "test_instance"
	instances = 4
	keys = ["terraform.pem"]
	ami = "ami-07c589821f2b353aa"
}
}


variable "no_of_students" {}







