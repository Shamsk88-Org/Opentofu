module "create_resource_groups" {
  source      = "../modules/resource_group"
  definitions = "definitions/resource_groups.yaml"
}
