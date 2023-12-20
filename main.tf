resource "aws_dynamodb_table" "prueba" {
  name           = "${var.env}-${var.name}"
  billing_mode   = var.billing_mode
  read_capacity  = 20
  write_capacity = 20
  hash_key       = var.hash_key

  dynamic "attribute" {
    for_each = var.attributes
    content {
      name = attribute.value["name"]
      type = attribute.value["type"]
    }
  }

  tags = {
    environment = var.env
  }
}

