resource "null_resource" "start" {
  triggers = {
    depends_id = "${var.depends_id}"
  }
}

resource "local_file" "cluster_yml" {
  depends_on = ["null_resource.start"]

  content  = "${var.yaml}"
  filename = "${path.module}/cluster.yml"
}

module "kupo_up" {
  depends_id = "${local_file.cluster_yml.id}"

  source  = "matti/outputs/shell"
  version = "0.1.2"
  command = "kupo up"
  chdir   = "${path.module}"

  envs = {
    DEBUG = "true"
  }
}
