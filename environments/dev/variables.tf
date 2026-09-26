locals {
  workspace_aliases = {
    default = "dev"
  }

  environment_name = lookup(
    local.workspace_aliases,
    terraform.workspace,
    terraform.workspace
  )

  environment_settings = {
    dev = {
      tags = {
        Criticidad = "baja"
      }
    }

    staging = {
      tags = {
        Criticidad = "media"
      }
    }

    prod = {
      tags = {
        Criticidad = "alta"
      }
    }
  }
}
