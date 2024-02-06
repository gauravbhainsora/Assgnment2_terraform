provider "aws" {
  region = "ap-south-1"  
}

# #USING COUNT
# variable "bucket_names" {
#   type    = list(string)
#   default = ["jinx", "irelia", "ggauravg"]  
# }

# resource "aws_s3_bucket" "Gary" {
#   count  = length(var.bucket_names)
#   bucket = var.bucket_names[count.index]
  
# }



# #USING FOR EACH 
# variable "bucket_names" {
#   type    = set(string)
#   default = ["jinx", "irelia", "ggauravg"]  
# }

# resource "aws_s3_bucket" "s3_bucket" {
#   for_each = var.bucket_names
#   bucket = each.key
# }
