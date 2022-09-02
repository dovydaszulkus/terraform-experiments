resource "aws_s3_bucket_object" "file" {
  bucket       = var.bucket_name
  key          = "index.html"
  source       = var.file_path
  content_type = "text/html"
  etag         = filemd5("./files/index.html")
}
