variable "dataplex_glossary_iam_bindings" {
  description = <<EOT
Map of dataplex_glossary_iam_bindings, attributes below
Required:
    - glossary_id
    - members
    - role
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    glossary_id = string
    members     = set(string)
    role        = string
    location    = optional(string)
    project     = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

