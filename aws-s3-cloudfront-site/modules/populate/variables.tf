variable "bucket_name" {
  type        = string
  description = "A name of an S3 bucket to which to upload files"
}

variable "file_path" {
  type        = string
  description = "A file path of the file that needs to be uploaded"
}
