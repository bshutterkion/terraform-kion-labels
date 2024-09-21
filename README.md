<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kion"></a> [kion](#requirement\_kion) | ~> 0.3.18 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kion"></a> [kion](#provider\_kion) | ~> 0.3.18 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kion_label.this](https://registry.terraform.io/providers/kionsoftware/kion/latest/docs/resources/label) | resource |
| [kion_label.existing_label_list](https://registry.terraform.io/providers/kionsoftware/kion/latest/docs/data-sources/label) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_labels"></a> [labels](#input\_labels) | Map of label keys to label details (value and color) | <pre>map(object({<br>    value = string<br>    color = string<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_labels_map"></a> [labels\_map](#output\_labels\_map) | Map of label keys to their respective IDs |
<!-- END_TF_DOCS -->