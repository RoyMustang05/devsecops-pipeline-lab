# Modulo: static-site

Crea un bucket S3 configurado como sitio web estatico publico.

## Uso

```hcl
module "site" {
  source          = "../../modules/static-site"
  bucket_name     = "mi-bucket-unico"
  index_file_path = "./website/index.html"
  environment     = "dev"
}
```

## Variables de entrada

| Nombre | Tipo | Requerida | Descripcion |
|---|---|---|---|
| bucket_name | string | si | Nombre unico global del bucket |
| index_file_path | string | si | Ruta local al archivo index.html |
| environment | string | no (default: dev) | Nombre del ambiente |
| tags | map(string) | no | Etiquetas adicionales |

## Salidas

| Nombre | Descripcion |
|---|---|
| website_url | URL publica del sitio desplegado |
| bucket_arn | ARN del bucket creado |
