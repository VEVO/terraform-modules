variable "name" {
  description = "The display name for the monitor"
}

variable "type" {
  description = "The type of alert (eg: metric, event, query, etc)"
  default     = "metric alert"
}

variable "message" {
  description = "The message embedded in the monitor which includes notifications"
}

variable "query" {
  description = "The query used in the monitor"
}

variable "thresholds" {
  description = "The monitor thresholds which indicate critical and warning levels"
  type        = "map"
}

variable "notify_no_data" {
  description = "A boolean indicating whether this monitor will notify when data stops reporting. Defaults to false."
  default     = false
}

variable "no_data_timeframe" {
  description = "The number of minutes before a monitor will notify when data stops reporting. Must be at least 2x the monitor timeframe for metric alerts or 2 minutes for service checks."
  default     = 60
}

variable "docs_prefix" {
  description = "Parent path to the datadog alerts docs"
  default     = "http://blah"
}

variable "docs_name" {
  description = "Combined with docs_prefix to make a clickable URL to the support docs"
  default     = "-fod"
}

variable "datadog_notify" {
  description = "Who to notify when the alert triggers.  In datadog @mention style"
}
