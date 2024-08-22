

data "ibm_resource_group" "resource_group" {
  name = "andrea-rg"
}

## create Code Engine project instance
resource "ibm_code_engine_project" "code_engine_project_instance" {
  name              = "my-ce-project"
  resource_group_id = data.ibm_resource_group.resource_group.id
}

## create application in Code Engine
resource "ibm_code_engine_app" "code_engine_app_instance" {
  project_id      = ibm_code_engine_project.code_engine_project_instance.project_id
  name            = "my-app"
  image_reference = "icr.io/codeengine/helloworld"

  run_env_variables {
    type  = "literal"
    name  = "name"
    value = "value"
  }
}
