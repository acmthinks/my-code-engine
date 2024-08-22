output "application_endpoint" {
    value = ibm_code_engine_app.code_engine_app_instance.endpoint
}


output "message" {
    value = <<EOM
    Code-Engine
    EOM
}
