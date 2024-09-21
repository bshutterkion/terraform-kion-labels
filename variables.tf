
variable "labels" {
  description = "Map of label keys to label details (value and color)"
  type = map(object({
    value = string
    color = string
  }))
}
