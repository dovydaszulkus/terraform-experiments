output "website_url" {
  value = module.website.website_url
}

output "website_bucket_name" {
  description = "The name of the bucket that stores website files"
  value       = module.website.website_bucket_name
}
