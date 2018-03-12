module "up" {
  source = ".."

  yaml = ""
}

output "stdout" {
  value = "${module.up.output}"
}

output "stderr" {
  value = "${module.up.stderr}"
}
