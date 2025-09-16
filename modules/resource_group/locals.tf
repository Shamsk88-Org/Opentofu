locals {
  definition = yamldecode(file(var.definitions))
}
