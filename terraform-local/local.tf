resource "local_file" "devops" {
        filename = "/home/ubuntu/terraform/terraform-local/devops_automated.txt"
        content = "i want to become a devops engineer" 
}



resource "random_string" "me" {
length = 16 
special = true
override_special = "!#$%&*()-_=+[]{}<>:?"
}


output "me" {
value = random_string.me[*].result
} 



