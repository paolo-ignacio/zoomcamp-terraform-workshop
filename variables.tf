

variable "credentials" {
    description = "My Credentials"
    default = "./terraform-key.json"
  
}
variable "project" {
    description = "Project"
    default = "dogwood-wharf-456103-t1"
  
}

variable "region" {
    description = "Region"
    default = "us-central1"

}
variable "location" {
    description = "Location"
    default = "US"
  
}

variable "bq_dataset_name" {
  description = "This is a description.  My Big Query Dataset Name"
  default = "demo_dataset"
}

variable "gsc_bucket_name" {
    description = "My Storage bucket name"
    default = "dogwood-wharf-456103-t1-terra-bucket"
}

variable "gcs_storage_class" {
    description = "Bucket storage class"
    default = "STANDARD"
}