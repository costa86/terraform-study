

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
  default     = "debian-cloud/debian-9"
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

variable "ssh_user" {
  description = "SSH user"
  type        = string
  default     = "costa"  
}

variable "private_key" {
  description = "SSH private key path"
  type        = string
  default     = "/home/costa/.ssh/costa-ubuntu.pub"  
}

variable "tags" {
  description = "tags"
  type        = list(string)
  default     = ["sample", "tutorial"]
}
