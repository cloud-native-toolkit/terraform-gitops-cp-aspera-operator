module "gitops_module" {
  source = "./module"

  gitops_config   = module.gitops.gitops_config
  git_credentials = module.gitops.git_credentials
  server_name     = module.gitops.server_name
  namespace       = module.gitops_namespace.name
  kubeseal_cert   = module.gitops.sealed_secrets_cert
  catalog         = module.cp_catalogs.catalog_ibmoperators
  #  channel         = module.cp4i-dependencies.eventstreams.channel
  channel = "v1.4"
}
