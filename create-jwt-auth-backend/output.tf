output admin-role {
  value = vault_jwt_auth_backend_role.admin.role_name
  description = "Admin Role Name"
}

output bound_claims {
  value = vault_jwt_auth_backend_role.admin.bound_claims
  description = "Admin Bound Claims"
}