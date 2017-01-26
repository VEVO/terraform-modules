resource "datadog_monitor" "main" {
  name = "Terraform Managed: ${var.name}"
  type = "${var.type}"

  message = "${var.message}"

  query = "${var.query}"

  thresholds = "${var.thresholds}"

  no_data_timeframe = "${var.no_data_timeframe}"
  notify_no_data    = "${var.notify_no_data}"
  include_tags      = true
  notify_audit      = false
}
