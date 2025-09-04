
variable "source_bucket_name" { default = "image-upload-source-bucket-001" }
variable "dest_bucket_name"   { default = "image-upload-dest-bucket" }
variable "sns_topic_name"     { default = "image-processing-topic" }
variable "lambda_function_name" { default = "image-resizer-lambda" }
variable "resize_width" { default = 800 }
 
variable "tags" {
  type = map(string)
  default = {
    Project   = "ImageProcessor"
    Owner     = "DevTeam"
    ManagedBy = "Terraform"
  }
}
variable "email" { 
  default = "coolpavi193@gmail.com"
}
