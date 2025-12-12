resource "null_resource" "hec_token_validation" {
  lifecycle {
    precondition {
      condition     = length(compact([var.hec_token, var.self_managed_hec_token, var.self_managed_hec_token_secrets_manager_secret_arn])) == 1
      error_message = "Only one of var.hec_token, var.self_managed_hec_token and var.self_managed_hec_token_secrets_manager_arn must be defined."
    }
  }
}
