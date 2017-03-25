output "CPU-iowait-monitor-ID" {
  value = "${datadog_monitor.CPU_iowait.id}"
}

output "CPU-system-monitor-ID" {
  value = "${datadog_monitor.CPU_system.id}"
}

output "CPU-user-monitor-ID" {
  value = "${datadog_monitor.CPU_user.id}"
}

output "CPU-stolen-monitor-ID" {
  value = "${datadog_monitor.CPU_stolen.id}"
}

output "MEMORY-monitor-ID" {
  value = "${datadog_monitor.MEMORY.id}"
}

output "DISK-monitor-ID" {
  value = "${datadog_monitor.DISK.id}"
}

output "LOAD_AVERAGE_1MINUTES-ID" {
  value = "${datadog_monitor.LOAD_AVERAGE_1MINUTES.id}"
}

output "LOAD_AVERAGE_15MINUTES-ID" {
  value = "${datadog_monitor.LOAD_AVERAGE_15MINUTES.id}"
}

output "LOAD_AVERAGE_5MINUTES-ID" {
  value = "${datadog_monitor.LOAD_AVERAGE_5MINUTES.id}"
}

output "SWAP_MEMORY-ID" {
  value = "${datadog_monitor.SWAP_MEMORY.id}"
}

output "NTP_OFFSET-ID" {
  value = "${datadog_monitor.NTP_OFFSET.id}"
}
