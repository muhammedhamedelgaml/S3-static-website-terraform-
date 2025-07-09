variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "s3-website-bucket-muhammed"
  
}

variable "path_to_index_html" {
  description = "Path to index.html file"
  type        = string
  default     = "index.html"

}


variable "path_to_policy_json" {
  description = "Path to policy.json file"
  type        = string
  default     = "policy.json"   
}



