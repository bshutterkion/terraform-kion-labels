output "labels_map" {
  description = "Map of label keys to their respective IDs"
  value = {
    for label_key, label_value in var.labels :
    label_key => (
      length(data.kion_label.existing_label_list[label_key].list) > 0 ?
      data.kion_label.existing_label_list[label_key].list[0].id :
      kion_label.this[label_key].id
    )
  }
}
