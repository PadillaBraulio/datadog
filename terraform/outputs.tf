output "CPU-monitor-ID" {
  value = "${datadog_monitor.CPU.id}"
}

output "MEMORY-monitor-ID" {
  value = "${datadog_monitor.MEMORY.id}"
}
