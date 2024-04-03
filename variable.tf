
variable "gcp_pg_name_primary" {
  type    = string
  default = "postgresql-primary"
}


variable "gcp_pg_database_version" {
  type    = string
  default = "POSTGRES_15"
}

variable "gcp_pg_region_primary" {
  type    = string
  default = "us-central1"
}

variable "project" {
  description = "The project ID where all resources will be launched."
  type        = string
  default     = "mytesting-400910"
}


variable "gcp_pg_tier" {
  type    = string
  default = "db-f1-micro"
}

# variable "insights_config" {
#   description = "The insights_config settings for the database."
#   type = object({
#     query_plans_per_minute  = optional(number, 5)
#     query_string_length     = optional(number, 1024)
#     record_application_tags = optional(bool, false)
#     record_client_address   = optional(bool, false)
#   })
#   default = null
# }

variable "insights_config" {
  description = "The insights_config settings for the database."
  type        = any
  default = {
    query_plans_per_minute  = 5
    query_string_length     = 1024
    record_application_tags = false
    record_client_address   = false
  }
}