variable "dbname" {
    description = "The name of the database"
    type        = string
    }

variable "dbuser" {
    description = "The username for the database"
    type        = string
    }

variable "dbpassword" {
    description = "The password for the database"
    type        = string
    }

variable "vpc" {
    description = "The VPC ID"
    type        = string
    }
