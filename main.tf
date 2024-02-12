provider "aws" {
  region = "ap-south-1"  
}

#SINGLE BUCKET
resource "aws_s3_bucket" "singleBucket"{ 
  bucket = "sennaaaaa"
}


#COUNT USING INTEGER
# resource "aws_s3_bucket" "counttttttt"{
#   count = 3

#   bucket = "buckettttt-${count.index}"
# }

#USING COUNT VARIABLE
variable "bucket_names_count" {
  type    = list(string)
  default = ["jinx", "irelia", "ggauravg"]  
}

resource "aws_s3_bucket" "Gary" {
  count  = length(var.bucket_names_count)
  bucket = var.bucket_names_count[count.index]
  
}

# In Terraform, you cannot use both the count and for_each loops together in the same resource block as they have conflicting behaviors and purposes
# The conflicting behaviors and purposes of the count and for_each loops in Terraform arise from the fact that count creates a fixed number of resource instances based on a numeric index,
# while for_each creates a dynamic number of resource instances based on a map or set of values.



#USING FOR EACH 
variable "bucket_names_foreach" {
  type    = set(string)
  default = ["garen", "jaxerino", "lucianiah"]  
}

resource "aws_s3_bucket" "s3_bucket" {
  for_each = var.bucket_names_foreach
  bucket = each.key
}
