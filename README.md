# terraform-modules
Initial POC for moving common terraform code to reusable curated modules.

Documentation on using modules are here https://www.terraform.io/docs/modules/usage.html

# Example datadog monitor

```
module "zipkin" {
  source = "github.com/VEVO/terraform-modules//datadog_monitor"
  name   = "Zipkin pod status in dev"

  message = <<EOF
The zipkin deployment running pod count is low in dev
Please check the documentation at https://some.place.net/datadog-alerts#zipkin
@zipkin-ops
EOF

  query = "max(last_15m):avg:kubernetes.deployment.replicas.available{deployment:zipkin,env:dev} by {deployment} < 1"

  thresholds {
    critical = 1
  }
}
```
