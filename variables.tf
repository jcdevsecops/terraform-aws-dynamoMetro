variable "env" {
  type        = string
  description = "Environment identifier for resource naming and segregation."
}

variable "name" {
  type        = string
  description = "Name of the DynamoDB table."
}

variable "billing_mode" {
  type        = string
  description = "Controls how you are charged for read and write throughput and how you manage capacity. Valid values: 'PROVISIONED' or 'PAY_PER_REQUEST'."
}

variable "hash_key" {
  type        = string
  description = "Attribute used as the hash key for the DynamoDB table."
}

variable "attributes" {
  description = "List of attributes for the DynamoDB table, specifying name and type for each attribute."
  type        = list(object({
    name = string
    type = string
  }))
}
