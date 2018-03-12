output "id" {
  value = "${module.kupo_up.id}"
}

output "output" {
  value = "${module.kupo_up.stdout == "" ? module.kupo_up.stderr : module.kupo_up.stdout}"
}

output "exit_status" {
  value = "${module.kupo_up.exit_status}"
}

output "stdout" {
  value = "${module.kupo_up.stdout}"
}

output "stderr" {
  value = "${module.kupo_up.stderr}"
}
