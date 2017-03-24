resource "datadog_monitor" "CPU" {
  name               = "${var.enviroment_tag} CPU"
  type               = "metric alert"
  message            = "Monitor triggered. Notify: ${var.users}"

  query = "avg(last_1m):abs(avg:system.cpu.user{ ${var.enviroment_tag} } by {host} + avg:system.cpu.guest{ ${var.enviroment_tag} } by {host} + avg:system.cpu.iowait{ ${var.enviroment_tag} } by {host} + avg:system.cpu.system{ ${var.enviroment_tag} } by {host} ) > 90"

  thresholds {
    ok       = 0
    warning  = 75
    critical = 90
  }

  notify_no_data    = false
  renotify_interval = 60

  notify_audit = false
  timeout_h    = 60
  include_tags = true

  silenced {
    "*" = 0
  }

  tags = ["CPU", "${var.enviroment_tag}"]
}


resource "datadog_monitor" "MEMORY" {
  name               = "${var.enviroment_tag} RAM"
  type               = "metric alert"
  message            = "Monitor triggered. Notify: ${var.users}"

  query = "avg(last_1m):abs(avg:system.mem.used{${var.enviroment_tag}}/avg:system.mem.total{${var.enviroment_tag}}) > 0.9"

  thresholds {
    ok       = 0
    warning  = 0.8
    critical = 0.9
  }

  notify_no_data    = true
  renotify_interval = 60

  notify_audit = false
  timeout_h    = 60
  include_tags = true

  silenced {
    "*" = 0
  }
  tags = ["MEMORY", "${var.enviroment_tag}"]
}
