# To setup provider for simple workspace admin

variable "host" {
  type        = string
  description = "Workspace host url including https"
}

variable "token" {
  type        = string
  description = "PAT token for the workspace"
}
