# Query for the existing label before attempting to create it
data "kion_label" "existing_label_list" {
  for_each = var.labels

  filter {
    name   = "key"
    values = [each.value.key]
  }
  filter {
    name   = "value"
    values = [each.value.value]
  }
}

# Create a new label only if it doesn't already exist
resource "kion_label" "this" {
  for_each = {
    for k, v in var.labels :
    k => v if length(data.kion_label.existing_label_list[k].list) == 0
  }

  key   = each.value.key
  value = each.value.value
  color = each.value.color

  lifecycle {
    prevent_destroy = true
  }

  depends_on = [data.kion_label.existing_label_list]
}
