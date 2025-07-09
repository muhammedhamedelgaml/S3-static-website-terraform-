resource "aws_s3_bucket" "s3_website_bucket" {
  bucket = var.bucket_name
}



resource "aws_s3_bucket_policy" "s3_website_bucket_policy" {
  bucket = aws_s3_bucket.s3_website_bucket.id
    policy = file(var.path_to_policy_json)
    
}

resource "aws_s3_bucket_public_access_block" "s3_website_bucket_public_access_block" {
  bucket = aws_s3_bucket.s3_website_bucket.id

  block_public_acls       = false
  block_public_policy     = false

  
}


resource "aws_s3_bucket_website_configuration" "example" {
  bucket = aws_s3_bucket.s3_website_bucket.id

  index_document {
    suffix = "index.html"
  }

    # error_document {
    #     key = "error.html"
    # }
}




resource "aws_s3_bucket_object" "upload_index_html" {
    bucket = aws_s3_bucket.s3_website_bucket.id
    key    = "index.html"
    content_type = "text/html"
    source = var.path_to_index_html
}