

variable "project" {
  description = "Project id"
  type        = string
  default     = "terraform-project-321519"
}

variable "credentials_file" {
  description = "Credentials file"
  type        = string
}

variable "region" {
  description = "region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "zone"
  type        = string
  default     = "us-central1-c"
}

variable "image" {
  description = "Where VM will be based on"
  type        = string
  default     = "cos-cloud/cos-stable"
  validation {
    condition     = length(var.image) > 5
    error_message = "Image name needs to be greater than 5."
  }
}

variable "vm_instance_type" {
  description = "VM instance type"
  type        = string
  default     = "f1-micro"
}

variable "tags" {
  description = "tags"
  type        = list(string)
  default     = ["sample", "tutorial"]
}
